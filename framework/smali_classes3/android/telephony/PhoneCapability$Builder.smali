.class public Landroid/telephony/PhoneCapability$Builder;
.super Ljava/lang/Object;
.source "PhoneCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceNrCapabilities:[I

.field private mLogicalModemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxActiveDataSubscriptions:I

.field private mMaxActiveVoiceSubscriptions:I

.field private mNetworkValidationBeforeSwitchSupported:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceNrCapabilities(Landroid/telephony/PhoneCapability$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/telephony/PhoneCapability$Builder;->mDeviceNrCapabilities:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/PhoneCapability$Builder;->mLogicalModemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxActiveDataSubscriptions(Landroid/telephony/PhoneCapability$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveDataSubscriptions:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveVoiceSubscriptions:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkValidationBeforeSwitchSupported(Landroid/telephony/PhoneCapability$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/PhoneCapability$Builder;->mNetworkValidationBeforeSwitchSupported:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveVoiceSubscriptions:I

    .line 329
    iput v0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveDataSubscriptions:I

    .line 337
    iput-boolean v0, p0, Landroid/telephony/PhoneCapability$Builder;->mNetworkValidationBeforeSwitchSupported:Z

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/PhoneCapability$Builder;->mLogicalModemList:Ljava/util/List;

    .line 352
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/PhoneCapability$Builder;->mDeviceNrCapabilities:[I

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/telephony/PhoneCapability;)V
    .registers 4
    .param p1, "phoneCapability"    # Landroid/telephony/PhoneCapability;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveVoiceSubscriptions:I

    .line 329
    iput v0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveDataSubscriptions:I

    .line 337
    iput-boolean v0, p0, Landroid/telephony/PhoneCapability$Builder;->mNetworkValidationBeforeSwitchSupported:Z

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/PhoneCapability$Builder;->mLogicalModemList:Ljava/util/List;

    .line 352
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/PhoneCapability$Builder;->mDeviceNrCapabilities:[I

    .line 362
    invoke-static {p1}, Landroid/telephony/PhoneCapability;->-$$Nest$fgetmMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveVoiceSubscriptions:I

    .line 363
    invoke-static {p1}, Landroid/telephony/PhoneCapability;->-$$Nest$fgetmMaxActiveDataSubscriptions(Landroid/telephony/PhoneCapability;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveDataSubscriptions:I

    .line 364
    invoke-static {p1}, Landroid/telephony/PhoneCapability;->-$$Nest$fgetmNetworkValidationBeforeSwitchSupported(Landroid/telephony/PhoneCapability;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneCapability$Builder;->mNetworkValidationBeforeSwitchSupported:Z

    .line 366
    invoke-static {p1}, Landroid/telephony/PhoneCapability;->-$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability$Builder;->mLogicalModemList:Ljava/util/List;

    .line 367
    invoke-static {p1}, Landroid/telephony/PhoneCapability;->-$$Nest$fgetmDeviceNrCapabilities(Landroid/telephony/PhoneCapability;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability$Builder;->mDeviceNrCapabilities:[I

    .line 368
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/PhoneCapability;
    .registers 3

    .line 418
    new-instance v0, Landroid/telephony/PhoneCapability;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/telephony/PhoneCapability$Builder;Landroid/telephony/PhoneCapability-IA;)V

    return-object v0
.end method

.method public setDeviceNrCapabilities([I)Landroid/telephony/PhoneCapability$Builder;
    .registers 2
    .param p1, "deviceNrCapabilities"    # [I

    .line 408
    iput-object p1, p0, Landroid/telephony/PhoneCapability$Builder;->mDeviceNrCapabilities:[I

    .line 409
    return-object p0
.end method

.method public setLogicalModemList(Ljava/util/List;)Landroid/telephony/PhoneCapability$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;)",
            "Landroid/telephony/PhoneCapability$Builder;"
        }
    .end annotation

    .line 400
    .local p1, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    iput-object p1, p0, Landroid/telephony/PhoneCapability$Builder;->mLogicalModemList:Ljava/util/List;

    .line 401
    return-object p0
.end method

.method public setMaxActiveDataSubscriptions(I)Landroid/telephony/PhoneCapability$Builder;
    .registers 2
    .param p1, "maxActiveDataSubscriptions"    # I

    .line 382
    iput p1, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveDataSubscriptions:I

    .line 383
    return-object p0
.end method

.method public setMaxActiveVoiceSubscriptions(I)Landroid/telephony/PhoneCapability$Builder;
    .registers 2
    .param p1, "maxActiveVoiceSubscriptions"    # I

    .line 374
    iput p1, p0, Landroid/telephony/PhoneCapability$Builder;->mMaxActiveVoiceSubscriptions:I

    .line 375
    return-object p0
.end method

.method public setNetworkValidationBeforeSwitchSupported(Z)Landroid/telephony/PhoneCapability$Builder;
    .registers 2
    .param p1, "networkValidationBeforeSwitchSupported"    # Z

    .line 392
    iput-boolean p1, p0, Landroid/telephony/PhoneCapability$Builder;->mNetworkValidationBeforeSwitchSupported:Z

    .line 393
    return-object p0
.end method
