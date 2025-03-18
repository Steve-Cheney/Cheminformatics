
    cmd.reinitialize()
    cmd.load("2DQ7-receptor.pdb")
    cmd.load("2DQ7-ligand.pdb")
    cmd.load("docking_results/ligand_15486-poses.sdf")

    cmd.color("green", "2DQ7-receptor.pdb")
    cmd.color("grey", "2DQ7-ligand.pdb")
    cmd.color("orange", "ligand_15486-poses")

    cmd.select("pocketresidues", "byres (all within 5 of 2DQ7-ligand.pdb)&polymer.protein")
    cmd.show("line","pocketresidues")
    cmd.set("ray_shadow", 0)
    cmd.set("cartoon_transparency", 0.8)
    cmd.util.cnc()
    cmd.zoom("pocketresidues")
    cmd.rotate("z","90")

    cmd.png("docking_results/ligand_15486_pose.png")
    