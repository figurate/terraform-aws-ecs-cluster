from diagrams import Diagram, Cluster
from diagrams.aws.compute import ECS, AutoScaling
from diagrams.aws.network import APIGateway, CloudMap

with Diagram("AWS ECS Cluster", show=False, direction="TB"):

    api_gw = APIGateway("api gateway")

    with Cluster("vpc"):

        api_gw >> CloudMap("service discovery") >> ECS("ecs cluster") >> AutoScaling("capacity provider")

