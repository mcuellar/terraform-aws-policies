policy "ec2-instance-type" {
    source = "./policies/ec2-instance-type.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "ec2-required-tags" {
    source = "./policies/ec2-required-tags.sentinel"
    enforcement_level = "hard-mandatory"
}
