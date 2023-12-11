.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_LIVE:I = 0x1

.field private static final FLAG_MUTED:I = 0x2

.field private static final FLAG_STEREO:I = 0x20

.field private static final FLAG_TRAFFIC_ANNOUNCEMENT:I = 0x8

.field private static final FLAG_TRAFFIC_PROGRAM:I = 0x4

.field private static final FLAG_TUNED:I = 0x10


# instance fields
.field private final mInfoFlags:I

.field private final mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final mRelatedContent:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final mSignalQuality:I

.field private final mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1665
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V
    .registers 10
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;
    .param p2, "logicallyTunedTo"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p3, "physicallyTunedTo"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p5, "infoFlags"    # I
    .param p6, "signalQuality"    # I
    .param p7, "metadata"    # Landroid/hardware/radio/RadioMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;II",
            "Landroid/hardware/radio/RadioMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1460
    .local p4, "relatedContent":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    .local p8, "vendorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1462
    iput-object p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1463
    iput-object p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1464
    if-nez p4, :cond_18

    .line 1465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    goto :goto_1f

    .line 1467
    :cond_18
    const-string v0, "relatedContent"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1468
    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    .line 1470
    :goto_1f
    iput p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1471
    iput p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    .line 1472
    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1473
    if-nez p8, :cond_2d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_2e

    :cond_2d
    move-object v0, p8

    :goto_2e
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 1474
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    sget-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 1656
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1657
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1658
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    .line 1659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    .line 1661
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1662
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    .line 1663
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ProgramInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1715
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1716
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1717
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 1719
    .local v1, "other":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v3, v4}, Landroid/hardware/radio/ProgramSelector;->strictEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    .line 1720
    :cond_18
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    .line 1721
    :cond_23
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v2

    .line 1722
    :cond_2e
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v2

    .line 1723
    :cond_39
    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    if-eq v3, v4, :cond_40

    return v2

    .line 1724
    :cond_40
    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    iget v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    if-eq v3, v4, :cond_47

    return v2

    .line 1725
    :cond_47
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    return v2

    .line 1726
    :cond_52
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    return v2

    .line 1728
    :cond_5d
    return v0
.end method

.method public getChannel()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    long-to-int v0, v0

    return v0

    .line 1539
    :catch_9
    move-exception v0

    .line 1540
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "BroadcastRadio.manager"

    const-string v2, "Not an AM/FM program"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v1, 0x0

    return v1
.end method

.method public getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 1498
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .registers 2

    .line 1637
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 1511
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public getRelatedContent()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    return-object v0
.end method

.method public getSelector()Landroid/hardware/radio/ProgramSelector;
    .registers 2

    .line 1482
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object v0
.end method

.method public getSignalStrength()I
    .registers 2

    .line 1629
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    return v0
.end method

.method public getSubChannel()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1552
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_b

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1554
    :catch_b
    move-exception v0

    .line 1556
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public getVendorInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1651
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .line 1709
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    iget v4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    .line 1710
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    iget-object v7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 1709
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDigital()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1581
    .local v0, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    if-nez v0, :cond_a

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    .line 1583
    :cond_a
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    .line 1584
    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public isLive()Z
    .registers 3

    .line 1594
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isMuted()Z
    .registers 2

    .line 1604
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStereo()Z
    .registers 2

    .line 1571
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isTrafficAnnouncementActive()Z
    .registers 2

    .line 1620
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isTrafficProgram()Z
    .registers 2

    .line 1612
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isTuned()Z
    .registers 2

    .line 1564
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramInfo [selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logicallyTunedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1698
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicallyTunedTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 1699
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relatedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    .line 1700
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", infoFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSignalQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1703
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1696
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1678
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSelector:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1679
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mLogicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1680
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mPhysicallyTunedTo:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1681
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mRelatedContent:Ljava/util/Collection;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeTypedCollection(Landroid/os/Parcel;Ljava/util/Collection;)V

    .line 1682
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mInfoFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1685
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1686
    return-void
.end method
