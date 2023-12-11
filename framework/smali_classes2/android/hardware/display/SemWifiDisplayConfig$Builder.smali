.class public final Landroid/hardware/display/SemWifiDisplayConfig$Builder;
.super Ljava/lang/Object;
.source "SemWifiDisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectionType:I

.field private mDeviceName:Ljava/lang/String;

.field private mFlags:I

.field private mIpAddress:Ljava/lang/String;

.field private mMode:I

.field private mP2pMacAddress:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPrameterGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mConnectionType:I

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mFlags:I

    .line 449
    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mMode:I

    .line 456
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$Builder$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$Builder$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig$Builder;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPrameterGroups:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addFlags(I)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 531
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mFlags:I

    .line 532
    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 4
    .param p1, "groupKey"    # Ljava/lang/String;
    .param p2, "parameter"    # Landroid/hardware/display/SemWifiDisplayParameter;

    .line 554
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 555
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 556
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_f
    return-object p0
.end method

.method public addParameters(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 4
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)",
            "Landroid/hardware/display/SemWifiDisplayConfig$Builder;"
        }
    .end annotation

    .line 569
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 570
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 571
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 573
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :cond_f
    return-object p0
.end method

.method public build()Landroid/hardware/display/SemWifiDisplayConfig;
    .registers 9

    .line 469
    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mConnectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 470
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig;

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mP2pMacAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V

    .local v0, "wifiDisplayConfig":Landroid/hardware/display/SemWifiDisplayConfig;
    goto :goto_1f

    .line 472
    .end local v0    # "wifiDisplayConfig":Landroid/hardware/display/SemWifiDisplayConfig;
    :cond_e
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig;

    iget v2, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mConnectionType:I

    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mIpAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPort:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mP2pMacAddress:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V

    .line 474
    .restart local v0    # "wifiDisplayConfig":Landroid/hardware/display/SemWifiDisplayConfig;
    :goto_1f
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPrameterGroups:Ljava/util/HashMap;

    const-string v2, "initparams"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 475
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPrameterGroups:Ljava/util/HashMap;

    const-string v2, "getparams"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 476
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPrameterGroups:Ljava/util/HashMap;

    const-string v2, "setparams"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 477
    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mMode:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemWifiDisplayConfig;->setMode(I)V

    .line 478
    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mFlags:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemWifiDisplayConfig;->addFlags(I)V

    .line 479
    return-object v0
.end method

.method public setApConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "p2pMacAddress"    # Ljava/lang/String;

    .line 501
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mConnectionType:I

    .line 502
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mIpAddress:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPort:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mDeviceName:Ljava/lang/String;

    .line 505
    iput-object p4, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mP2pMacAddress:Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public setMode(I)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 2
    .param p1, "mode"    # I

    .line 542
    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mMode:I

    .line 543
    return-object p0
.end method

.method public setP2pConnection(Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 3
    .param p1, "p2pMacAddress"    # Ljava/lang/String;

    .line 489
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mConnectionType:I

    .line 490
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mP2pMacAddress:Ljava/lang/String;

    .line 491
    return-object p0
.end method

.method public setUsbConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    .registers 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "p2pMacAddress"    # Ljava/lang/String;

    .line 516
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mConnectionType:I

    .line 517
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mIpAddress:Ljava/lang/String;

    .line 518
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mPort:Ljava/lang/String;

    .line 519
    iput-object p3, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mDeviceName:Ljava/lang/String;

    .line 520
    iput-object p4, p0, Landroid/hardware/display/SemWifiDisplayConfig$Builder;->mP2pMacAddress:Ljava/lang/String;

    .line 521
    return-object p0
.end method
