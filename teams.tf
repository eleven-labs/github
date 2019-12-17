# Core
module "core" {
  source = "./module/team/"

  team-name        = "Core"
  team-description = ""
  team-privacy     = "secret"

  team-members = [
    {
      login = module.GORRONCharlesEric.login
      role  = "maintainer"
    },
    {
      login = module.JALOUZOTJonathan.login
      role  = "maintainer"
    },
    {
      login = module.JARDINETRemy.login
      role  = "maintainer"
    },
    {
      login = module.KANIANoel.login
      role  = "maintainer"
    },
    {
      login = module.SAILLARDDamien.login
      role  = "maintainer"
    },
    {
      login = module.SAILLARDDamien11.login
      role  = "maintainer"
    },
    {
      login = module.VEBERArnaud.login
      role  = "maintainer"
    }
  ]
}

# Developers
module "developers" {
  source = "./module/team/"

  team-name        = "Developers"
  team-description = ""
  team-privacy     = "closed"

  team-members = [
    {
      login = module.AGIRIKevin.login
      role  = "member"
    },
    {
      login = module.ANDREAlexandre.login
      role  = "member"
    },
    {
      login = module.BERNARDJeremy.login
      role  = "member"
    },
    {
      login = module.BERTRANDVincent.login
      role  = "member"
    },
    {
      login = module.BILLARDMADRIERESVictor.login
      role  = "member"
    },
    {
      login = module.BOEHadrien.login
      role  = "member"
    },
    {
      login = module.BOILLONYannick.login
      role  = "member"
    },
    {
      login = module.BRENOTPierre.login
      role  = "member"
    },
    {
      login = module.BRUGIDOUThibaut.login
      role  = "member"
    },
    {
      login = module.CADOUXMartin.login
      role  = "member"
    },
    {
      login = module.CALONEBastien.login
      role  = "member"
    },
    {
      login = module.CANALGuillem.login
      role  = "member"
    },
    {
      login = module.CHARRONMaeva.login
      role  = "member"
    },
    {
      login = module.CHMITISafia.login
      role  = "member"
    },
    {
      login = module.CLAVIERAnais.login
      role  = "member"
    },
    {
      login = module.CORDIERKevin.login
      role  = "member"
    },
    {
      login = module.DARAMehdy.login
      role  = "member"
    },
    {
      login = module.DELPEYROUXVictor.login
      role  = "member"
    },
    {
      login = module.DIOURIYounes.login
      role  = "member"
    },
    {
      login = module.DOUCETMarion.login
      role  = "member"
    },
    {
      login = module.DRUONMehdi.login
      role  = "member"
    },
    {
      login = module.DURANDHugo.login
      role  = "member"
    },
    {
      login = module.DURANDRomain.login
      role  = "member"
    },
    {
      login = module.EINHORNStephane.login
      role  = "member"
    },
    {
      login = module.ELFARSAOUIKamal.login
      role  = "member"
    },
    {
      login = module.FRUITDimitri.login
      role  = "member"
    },
    {
      login = module.GORRONCharlesEric.login
      role  = "maintainer"
    },
    {
      login = module.GRAILLONRobin.login
      role  = "member"
    },
    {
      login = module.GREAUXJeremy.login
      role  = "member"
    },
    {
      login = module.GREVINNicolas.login
      role  = "member"
    },
    {
      login = module.HUCHONThibaud.login
      role  = "member"
    },
    {
      login = module.JACQUEMINArthur.login
      role  = "member"
    },
    {
      login = module.JALOUZOTJonathan.login
      role  = "maintainer"
    },
    {
      login = module.JARDINETRemy.login
      role  = "maintainer"
    },
    {
      login = module.KANIANoel.login
      role  = "maintainer"
    },
    {
      login = module.KPOTOGBEYMAKUShalom.login
      role  = "member"
    },
    {
      login = module.LANAUGregory.login
      role  = "member"
    },
    {
      login = module.LENGLETMartin.login
      role  = "member"
    },
    {
      login = module.LEROUGEPierre.login
      role  = "member"
    },
    {
      login = module.MAIREAUXMaxence.login
      role  = "member"
    },
    {
      login = module.MASCLEFRomain.login
      role  = "member"
    },
    {
      login = module.MAVILLAZRemi.login
      role  = "member"
    },
    {
      login = module.MIGEOTDEBARANFabrice.login
      role  = "member"
    },
    {
      login = module.MINASYANMarie.login
      role  = "member"
    },
    {
      login = module.MOATIJacques.login
      role  = "member"
    },
    {
      login = module.MONCADECedric.login
      role  = "member"
    },
    {
      login = module.MORENOJeanFrancois.login
      role  = "member"
    },
    {
      login = module.MOUTTEAnthony.login
      role  = "member"
    },
    {
      login = module.OGRENCarl.login
      role  = "member"
    },
    {
      login = module.PASQUETFabien.login
      role  = "member"
    },
    {
      login = module.PEAUDECERFMarion.login
      role  = "member"
    },
    {
      login = module.PIERLOTRomain.login
      role  = "member"
    },
    {
      login = module.SAILLARDDamien.login
      role  = "maintainer"
    },
    {
      login = module.SAILLARDDamien11.login
      role  = "maintainer"
    },
    {
      login = module.SOLOMONEmmanuel.login
      role  = "member"
    },
    {
      login = module.SURPierre.login
      role  = "member"
    },
    {
      login = module.THUONThierry.login
      role  = "member"
    },
    {
      login = module.VEBERArnaud.login
      role  = "maintainer"
    },
    {
      login = module.VERMEILPierre.login
      role  = "member"
    },
  ]
}

# HQ
module "hq" {
  source = "./module/team/"

  team-name        = "HQ"
  team-description = ""
  team-privacy     = "closed"

  team-members = [
    {
      login = module.AMARBenjamin.login
      role  = "member"
    },
    {
      login = module.BERRYElsa.login
      role  = "member"
    },
    {
      login = module.CLAVIERAnais.login
      role  = "member"
    },
    {
      login = module.JALOUZOTJonathan.login
      role  = "maintainer"
    },
    {
      login = module.PEJOUTThomas.login
      role  = "maintainer"
    },
    {
      login = module.WILSON.login
      role  = "member"
    }
  ]
}
