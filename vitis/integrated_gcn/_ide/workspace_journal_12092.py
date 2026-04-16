# 2026-04-15T21:23:53.783588531
import vitis

client = vitis.create_client()
client.set_workspace(path="integrated_gcn")

vitis.dispose()

