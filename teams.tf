# Core
module "core" {
  source = "./module/team/"

  team-name        = "Core"
  team-description = ""
  team-privacy     = "secret"

  team-members = [
    module.GORRONCharlesEric.login,
    module.GREAUXJeremy.login,
    module.JARDINETRemy.login,
    module.KANIANoel.login,
    module.SAILLARDDamien.login,
    module.SAILLARDDamien11.login,
    module.VEBERArnaud.login,
  ]

  team-roles = {
    (module.GORRONCharlesEric.login) = "maintainer",
    (module.GREAUXJeremy.login)      = "maintainer",
    (module.JARDINETRemy.login)      = "maintainer",
    (module.KANIANoel.login)         = "maintainer",
    (module.SAILLARDDamien.login)    = "maintainer",
    (module.SAILLARDDamien11.login)  = "maintainer",
    (module.VEBERArnaud.login)       = "maintainer",
  }
}

# Developers
module "developers" {
  source = "./module/team/"

  team-name        = "Developers"
  team-description = ""
  team-privacy     = "closed"

  team-members = [
    module.ALGRINThibaut.login,
    module.ANDREAlexandre.login,
    module.BERNARDJeremy.login,
    module.BERTRANDVincent.login,
    module.BILLARDMADRIERESVictor.login,
    module.BOEHadrien.login,
    module.BOILLONYannick.login,
    module.BRENOTPierre.login,
    module.BRUGIDOUThibaut.login,
    module.CADOUXMartin.login,
    module.CALONEBastien.login,
    module.CANALGuillem.login,
    module.CHARRONMaeva.login,
    module.CLAVIERAnais.login,
    module.CORDIERKevin.login,
    module.DELPEYROUXVictor.login,
    module.DIOURIYounes.login,
    module.DRUONMehdi.login,
    module.DURANDHugo.login,
    module.DURANDRomain.login,
    module.EINHORNStephane.login,
    module.ELFARSAOUIKamal.login,
    module.FRUITDimitri.login,
    module.GORRONCharlesEric.login,
    module.GRAILLONRobin.login,
    module.GREAUXJeremy.login,
    module.GREVINNicolas.login,
    module.HUCHONThibaud.login,
    module.JACQUEMINArthur.login,
    module.JARDINETRemy.login,
    module.KANIANoel.login,
    module.LANAUGregory.login,
    module.LENGLETMartin.login,
    module.LEROUGEPierre.login,
    module.MAIREAUXMaxence.login,
    module.MASCLEFRomain.login,
    module.MAVILLAZRemi.login,
    module.MIGEOTDEBARANFabrice.login,
    module.MINASYANMarie.login,
    module.MOATIJacques.login,
    module.MOUTTEAnthony.login,
    module.OGRENCarl.login,
    module.PASQUETFabien.login,
    module.PEAUDECERFMarion.login,
    module.PIERLOTRomain.login,
    module.SAILLARDDamien.login,
    module.SAILLARDDamien11.login,
    module.SOLOMONEmmanuel.login,
    module.SURPierre.login,
    module.THUONThierry.login,
    module.VEBERArnaud.login,
    module.VERMEILPierre.login,
  ]

  team-roles = {
    (module.ALGRINThibaut.login)          = "member",
    (module.ANDREAlexandre.login)         = "member",
    (module.BERNARDJeremy.login)          = "member",
    (module.BERTRANDVincent.login)        = "member",
    (module.BILLARDMADRIERESVictor.login) = "member",
    (module.BOEHadrien.login)             = "member",
    (module.BOILLONYannick.login)         = "member",
    (module.BRENOTPierre.login)           = "member",
    (module.BRUGIDOUThibaut.login)        = "member",
    (module.CADOUXMartin.login)           = "member",
    (module.CALONEBastien.login)          = "member",
    (module.CANALGuillem.login)           = "member",
    (module.CHARRONMaeva.login)           = "member",
    (module.CLAVIERAnais.login)           = "member",
    (module.CORDIERKevin.login)           = "member",
    (module.DELPEYROUXVictor.login)       = "member",
    (module.DIOURIYounes.login)           = "member",
    (module.DRUONMehdi.login)             = "member",
    (module.DURANDHugo.login)             = "member",
    (module.DURANDRomain.login)           = "member",
    (module.EINHORNStephane.login)        = "member",
    (module.ELFARSAOUIKamal.login)        = "member",
    (module.FRUITDimitri.login)           = "member",
    (module.GORRONCharlesEric.login)      = "maintainer",
    (module.GRAILLONRobin.login)          = "member",
    (module.GREAUXJeremy.login)           = "maintainer",
    (module.GREVINNicolas.login)          = "member",
    (module.HUCHONThibaud.login)          = "member",
    (module.JACQUEMINArthur.login)        = "member",
    (module.JARDINETRemy.login)           = "maintainer",
    (module.KANIANoel.login)              = "maintainer",
    (module.LANAUGregory.login)           = "member",
    (module.LENGLETMartin.login)          = "member",
    (module.LEROUGEPierre.login)          = "member",
    (module.MAIREAUXMaxence.login)        = "member",
    (module.MASCLEFRomain.login)          = "member",
    (module.MAVILLAZRemi.login)           = "member",
    (module.MIGEOTDEBARANFabrice.login)   = "member",
    (module.MINASYANMarie.login)          = "member",
    (module.MOATIJacques.login)           = "member",
    (module.MOUTTEAnthony.login)          = "member",
    (module.OGRENCarl.login)              = "member",
    (module.PASQUETFabien.login)          = "member",
    (module.PEAUDECERFMarion.login)       = "member",
    (module.PIERLOTRomain.login)          = "member",
    (module.SAILLARDDamien.login)         = "maintainer",
    (module.SAILLARDDamien11.login)       = "maintainer",
    (module.SOLOMONEmmanuel.login)        = "member",
    (module.SURPierre.login)              = "member",
    (module.THUONThierry.login)           = "member",
    (module.VEBERArnaud.login)            = "maintainer",
    (module.VERMEILPierre.login)          = "member",
  }
}

# HQ
module "hq" {
  source = "./module/team/"

  team-name        = "HQ"
  team-description = ""
  team-privacy     = "closed"

  team-members = [
    module.AMARBenjamin.login,
    module.BERRYElsa.login,
    module.CLAVIERAnais.login,
    module.PEJOUTThomas.login,
    module.WILSON.login,
  ]

  team-roles = {
    (module.AMARBenjamin.login) = "member",
    (module.BERRYElsa.login)    = "member",
    (module.CLAVIERAnais.login) = "member",
    (module.PEJOUTThomas.login) = "maintainer",
    (module.WILSON.login)       = "member",
  }
}
