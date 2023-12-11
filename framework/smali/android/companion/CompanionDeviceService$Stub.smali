.class Landroid/companion/CompanionDeviceService$Stub;
.super Landroid/companion/ICompanionDeviceService$Stub;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final mMainHandler:Landroid/os/Handler;

.field final mService:Landroid/companion/CompanionDeviceService;

.field final synthetic this$0:Landroid/companion/CompanionDeviceService;


# direct methods
.method public static synthetic $r8$lambda$2oShJkLCMqyoqY33FRs82zQv2qc(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceAppeared$0(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MfljEcA1p10JKpTrDTTZLdjtvrk(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceDisappeared$1(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private constructor <init>(Landroid/companion/CompanionDeviceService;)V
    .registers 3

    .line 294
    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceService$Stub;-><init>()V

    .line 295
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    .line 296
    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService$Stub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;)V

    return-void
.end method

.method private synthetic lambda$onDeviceAppeared$0(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 300
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private synthetic lambda$onDeviceDisappeared$1(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 305
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method


# virtual methods
.method public onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 300
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 305
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
