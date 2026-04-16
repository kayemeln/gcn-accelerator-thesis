# 2026-04-14T22:12:41.400496259
import vitis

client = vitis.create_client()
client.set_workspace(path="integrated_gcn")

comp = client.create_hls_component(name = "integrated_gcn",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/vitis/integrated_gcn/integrated_gcn/hls_config.cfg")

cfg.set_values(key="syn.file", values=["/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/src/integrated-gcn/integrated_gcn.cpp"])

cfg.set_values(key="tb.file", values=["/home/nat/dev/trinners/mai_proj/hls/thesis-gcn-accelerator/src/integrated-gcn/integrated_gcn_tb.cpp"])

cfg.set_value(section="hls", key="syn.top", value="integrated_gcn")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

