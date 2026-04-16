# 2026-04-15T21:24:48.626513196
import vitis

client = vitis.create_client()
client.set_workspace(path="integrated_gcn")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn_approx")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="integrated_gcn")
comp.run(operation="C_SIMULATION")

vitis.dispose()

