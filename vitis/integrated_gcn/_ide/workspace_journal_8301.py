# 2026-04-15T12:37:13.916209233
import vitis

client = vitis.create_client()
client.set_workspace(path="integrated_gcn")

comp = client.create_hls_component(name = "gemm_kernel",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="gemm_kernel")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp = client.create_hls_component(name = "spmm_kernel",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="spmm_kernel")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp = client.create_hls_component(name = "naive_spmm_kernel",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="naive_spmm_kernel")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.create_hls_component(name = "integrated_gcn_approx",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

