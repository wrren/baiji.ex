defmodule Baiji.Response.Parser.XMLTest do
  use ExUnit.Case, async: true

  test "correctly parses EC2 XML response" do
    response = Path.expand('../../../fixtures/ec2.xml', __DIR__)
    |> File.read!

    operation = Baiji.EC2.describe_instances

    assert Baiji.Response.Parser.XML.parse(response, operation) == {:ok, %{
      "reservationSet"  => [
        %{
          "reservationId" => "r-1234567890abcdef0", 
          "groupSet" => [], 
          "instancesSet" => [%{
            "amiLaunchIndex" => 0, 
            "architecture" => "x86_64", 
            "blockDeviceMapping" => [%{
              "deviceName" => "/dev/xvda", 
              "ebs" => %{}
            }], 
            "clientToken" => "xMcwG14507example", 
            "dnsName" => "ec2-54-194-252-215.eu-west-1.compute.amazonaws.com", 
            "ebsOptimized" => false, 
            "groupSet" => [%{
              "groupId" => "sg-e4076980", 
              "groupName" => "SecurityGroup1"
            }], 
            "hypervisor" => "xen", 
            "imageId" => "ami-bff32ccc", 
            "instanceId" => "i-1234567890abcdef0", 
            "instanceState" => %{}, 
            "instanceType" => "t2.micro", 
            "ipAddress" => "54.194.252.215", 
            "keyName" => "my_keypair", 
            "launchTime" => ~N[2015-12-22 10:44:05.000], 
            "monitoring" => %{}, 
            "networkInterfaceSet" => [%{
              "association" => %{}, 
              "attachment" => %{}, 
              "description" => "Primary network interface", 
              "groupSet" => [%{
                "groupId" => "sg-e4076980", 
                "groupName" => "SecurityGroup1"
              }], 
            "ipv6AddressesSet" => [%{"ipv6Address" => "2001:db8:1234:1a2b::123"}], "macAddress" => "02:dd:2c:5e:01:69", "networkInterfaceId" => "eni-551ba033", "ownerId" => "123456789012", "privateDnsName" => "ip-192-168-1-88.eu-west-1.compute.internal", "privateIpAddress" => "192.168.1.88", "privateIpAddressesSet" => [%{"association" => %{}, "primary" => true, "privateDnsName" => "ip-192-168-1-88.eu-west-1.compute.internal", "privateIpAddress" => "192.168.1.88"}], "sourceDestCheck" => true, "status" => "in-use", "subnetId" => "subnet-56f5f633", "vpcId" => "vpc-11112222"}], "placement" => %{}, "privateDnsName" => "ip-192-168-1-88.eu-west-1.compute.internal", "privateIpAddress" => "192.168.1.88", "productCodes" => [], "rootDeviceName" => "/dev/xvda", "rootDeviceType" => "ebs", "sourceDestCheck" => true, "subnetId" => "subnet-56f5f633", "tagSet" => [%{"key" => "Name", "value" => "Server_1"}], "virtualizationType" => "hvm", "vpcId" => "vpc-11112222"}], "ownerId" => "123456789012"}
        
      ]
    }}
  end

  test "correctly parses AutoScaling XML response" do
    response = Path.expand('../../../fixtures/autoscaling.xml', __DIR__)
    |> File.read!

    operation = Baiji.AutoScaling.describe_auto_scaling_groups

    assert Baiji.Response.Parser.XML.parse(response, operation) == {:ok, %{
      "AutoScalingGroups" => [%{
        "AutoScalingGroupARN" => "arn:aws:autoscaling:us-east-1:123456789012:autoScalingGroup:12345678-1234-1234-1234-123456789012:autoScalingGroupName/my-asg",
        "AutoScalingGroupName" => "my-asg",
        "AvailabilityZones" => [
          "us-east-1b", "us-east-1a"
        ],
        "CreatedTime" => ~N[2015-05-06 17:47:15.107],
        "DefaultCooldown" => 300, 
        "DesiredCapacity" => 2,
        "EnabledMetrics" => [], 
        "HealthCheckGracePeriod" => 300,
        "HealthCheckType" => "ELB",
        "Instances" => [%{
          "AvailabilityZone"          => "us-east-1c",
          "InstanceId"                => "i-12345678",
          "LaunchConfigurationName"   => "my-lc",
          "LifecycleState"            => "InService",
          "ProtectedFromScaleIn"      => false}
        ],
        "LaunchConfigurationName" => "my-lc",
        "LoadBalancerNames" => ["my-loadbalancer"], 
        "MaxSize" => 10,
        "MinSize" => 2, 
        "NewInstancesProtectedFromScaleIn" => false,
        "SuspendedProcesses" => [],
        "Tags" => [%{
          "Key" => "environment",
          "PropagateAtLaunch" => true, 
          "ResourceId" => "my-asg",
          "ResourceType" => "auto-scaling-group", 
          "Value" => "test"}
        ],
        "TerminationPolicies" => ["Default"],
        "VPCZoneIdentifier" => "subnet-12345678,subnet-98765432"}
      ]
    }}
  end
end