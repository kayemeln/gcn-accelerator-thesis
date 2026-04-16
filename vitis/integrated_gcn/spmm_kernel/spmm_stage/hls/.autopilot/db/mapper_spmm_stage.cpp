#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
struct __cosim_s64__ { char data[64]; };
extern "C" void spmm_stage(Byte<4>*, Byte<4>*, Byte<2>*, Byte<64>*, Byte<64>*, int, int, int, int, int, int);
extern "C" void apatb_spmm_stage_hw(volatile void * __xlx_apatb_param_row_length, volatile void * __xlx_apatb_param_colind, volatile void * __xlx_apatb_param_values, volatile void * __xlx_apatb_param_H_temp, int __xlx_apatb_param_nnz_total, volatile void * __xlx_apatb_param_H_out) {
using hls::sim::createStream;
  // Collect __xlx_row_length__tmp_vec
std::vector<Byte<4>> __xlx_row_length__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_row_length__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_row_length)[i]);
}
  int __xlx_size_param_row_length = 1;
  int __xlx_offset_param_row_length = 0;
  int __xlx_offset_byte_param_row_length = 0*4;
  // Collect __xlx_colind__tmp_vec
std::vector<Byte<4>> __xlx_colind__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_colind__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_colind)[i]);
}
  int __xlx_size_param_colind = 1;
  int __xlx_offset_param_colind = 0;
  int __xlx_offset_byte_param_colind = 0*4;
  // Collect __xlx_values__tmp_vec
std::vector<Byte<2>> __xlx_values__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_values__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_values)[i]);
}
  int __xlx_size_param_values = 1;
  int __xlx_offset_param_values = 0;
  int __xlx_offset_byte_param_values = 0*2;
  // Collect __xlx_H_temp__tmp_vec
std::vector<Byte<64>> __xlx_H_temp__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_H_temp__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_H_temp)[i]);
}
  int __xlx_size_param_H_temp = 1;
  int __xlx_offset_param_H_temp = 0;
  int __xlx_offset_byte_param_H_temp = 0*64;
  // Collect __xlx_H_out__tmp_vec
std::vector<Byte<64>> __xlx_H_out__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_H_out__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_H_out)[i]);
}
  int __xlx_size_param_H_out = 1;
  int __xlx_offset_param_H_out = 0;
  int __xlx_offset_byte_param_H_out = 0*64;
  // DUT call
  spmm_stage(__xlx_row_length__tmp_vec.data(), __xlx_colind__tmp_vec.data(), __xlx_values__tmp_vec.data(), __xlx_H_temp__tmp_vec.data(), __xlx_H_out__tmp_vec.data(), __xlx_offset_byte_param_row_length, __xlx_offset_byte_param_colind, __xlx_offset_byte_param_values, __xlx_offset_byte_param_H_temp, __xlx_apatb_param_nnz_total, __xlx_offset_byte_param_H_out);
// print __xlx_apatb_param_row_length
for (size_t i = 0; i < __xlx_size_param_row_length; ++i) {
((Byte<4>*)__xlx_apatb_param_row_length)[i] = __xlx_row_length__tmp_vec[__xlx_offset_param_row_length+i];
}
// print __xlx_apatb_param_colind
for (size_t i = 0; i < __xlx_size_param_colind; ++i) {
((Byte<4>*)__xlx_apatb_param_colind)[i] = __xlx_colind__tmp_vec[__xlx_offset_param_colind+i];
}
// print __xlx_apatb_param_values
for (size_t i = 0; i < __xlx_size_param_values; ++i) {
((Byte<2>*)__xlx_apatb_param_values)[i] = __xlx_values__tmp_vec[__xlx_offset_param_values+i];
}
// print __xlx_apatb_param_H_temp
for (size_t i = 0; i < __xlx_size_param_H_temp; ++i) {
((Byte<64>*)__xlx_apatb_param_H_temp)[i] = __xlx_H_temp__tmp_vec[__xlx_offset_param_H_temp+i];
}
// print __xlx_apatb_param_H_out
for (size_t i = 0; i < __xlx_size_param_H_out; ++i) {
((Byte<64>*)__xlx_apatb_param_H_out)[i] = __xlx_H_out__tmp_vec[__xlx_offset_param_H_out+i];
}
}
