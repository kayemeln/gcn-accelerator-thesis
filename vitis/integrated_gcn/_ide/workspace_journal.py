# 2026-04-16T10:02:57.162746328
import vitis

client = vitis.create_client()
client.set_workspace(path="integrated_gcn")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

