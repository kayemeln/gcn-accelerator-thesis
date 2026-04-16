# 2026-04-15T21:22:38.522414297
import vitis

client = vitis.create_client()
client.set_workspace(path="integrated_gcn")

vitis.dispose()

