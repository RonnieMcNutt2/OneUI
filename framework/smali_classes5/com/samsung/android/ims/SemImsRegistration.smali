.class public Lcom/samsung/android/ims/SemImsRegistration;
.super Ljava/lang/Object;
.source "SemImsRegistration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsRegistration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/SemImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SemImsRegistration"

.field private static final NETWORK_TYPE_MOBILE:I = 0x1

.field private static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field private mDeregiReason:I

.field private final mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomain:Ljava/lang/String;

.field private final mEcmpStatus:I

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field private final mHandle:I

.field private final mInstanceId:Ljava/lang/String;

.field private final mNetwork:Landroid/net/Network;

.field private final mOwnNumber:Ljava/lang/String;

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field private final mPcscf:Ljava/lang/String;

.field private final mPdnType:I

.field private final mPhoneId:I

.field private final mPreferredPublicUserId:Ljava/lang/String;

.field private final mPrivateUserId:Ljava/lang/String;

.field private mProhibited:Z

.field private final mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRat:I

.field private final mRegExpiryStatus:I

.field private final mRegisterSipResponse:Ljava/lang/String;

.field private final mRegisteredPublicUserId:Ljava/lang/String;

.field private final mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 414
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/SemImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v1, 0xe

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 429
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 430
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration;->readServices(Landroid/os/Parcel;)V

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_45

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    goto :goto_47

    .line 438
    :cond_45
    iput-object v2, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 440
    :goto_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 442
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 444
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_8d

    move v1, v3

    goto :goto_8e

    :cond_8d
    move v1, v0

    :goto_8e
    iput-boolean v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_97

    move v0, v3

    :cond_97
    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_a6

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    goto :goto_a8

    .line 458
    :cond_a6
    iput-object v2, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 460
    :goto_a8
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 463
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/SemImsRegistration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 511
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mHandle:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 512
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 513
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRat:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 514
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 515
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 516
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisteredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 517
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPreferredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 518
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 519
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 520
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 521
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 522
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 523
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPdnType:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 524
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 525
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmEcmpStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 526
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmRegExpiryStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 527
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmEpdgStatus(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 528
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmEpdgOverCellularData(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 529
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmProhibited(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 530
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmRegisterSipResponse(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 531
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmNetwork(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 532
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmDeregiReason(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 533
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->-$$Nest$fgetmPAssociatedUri2nd(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 534
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mOwnNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ims/SemImsRegistration;)V
    .registers 4
    .param p1, "src"    # Lcom/samsung/android/ims/SemImsRegistration;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 481
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 482
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 483
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 484
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 485
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 486
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 487
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 490
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 491
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 492
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 493
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 494
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 495
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 496
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 497
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 498
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 499
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 500
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 501
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 502
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 503
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 504
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ims/SemImsRegistration;Ljava/util/Set;)V
    .registers 5
    .param p1, "src"    # Lcom/samsung/android/ims/SemImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ims/SemImsRegistration;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 540
    .local p2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 541
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    .line 542
    iput-object p2, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    .line 543
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 544
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    .line 545
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 546
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    .line 547
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    .line 550
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    .line 551
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    .line 552
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 553
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    .line 554
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    .line 555
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    .line 556
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    .line 557
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 558
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 559
    iget-boolean v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 560
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 561
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    .line 562
    iget v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 563
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 564
    iget-object v0, p1, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    .line 565
    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .registers 1

    .line 571
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration$Builder;

    invoke-direct {v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;-><init>()V

    return-object v0
.end method

.method private readServices(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 474
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 475
    return-void
.end method

.method private writeServices(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 467
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public getDeregiReason()I
    .registers 2

    .line 327
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEcmpStatus()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    return v0
.end method

.method public getEpdgStatus()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    return v0
.end method

.method public getHandle()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    return v0
.end method

.method public getImpi()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getImpuList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    .line 284
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    return v0
.end method

.method public getOwnNumber()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscf()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    return v0
.end method

.method public getPreferredImpu()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterSipResponse()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisteredFeatures()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRegisteredImpu()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisteredRat()I
    .registers 2

    .line 345
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    return v0
.end method

.method public getSecondPAssociatedUri()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object v0
.end method

.method public getServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSubscriptionId()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    return v0
.end method

.method public hasRcsService()Z
    .registers 3

    .line 195
    new-instance v0, Ljava/util/HashSet;

    .line 196
    invoke-static {}, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v0, "rcsServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "service"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEpdgOverCellularData()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    return v0
.end method

.method public isImsiBased(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isProhibited()Z
    .registers 2

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    return v0
.end method

.method public setDeregiReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 320
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeregiReason:I

    .line 321
    return-void
.end method

.method public setEpdgOverCellularData(Z)V
    .registers 2
    .param p1, "isEpdgOverCellularData"    # Z

    .line 277
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    .line 278
    return-void
.end method

.method public setEpdgStatus(Z)V
    .registers 2
    .param p1, "isEpdgConnected"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    .line 263
    return-void
.end method

.method public setProhibited(Z)V
    .registers 2
    .param p1, "prohibited"    # Z

    .line 292
    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mProhibited:Z

    .line 293
    return-void
.end method

.method public setRegiRat(I)V
    .registers 2
    .param p1, "rat"    # I

    .line 334
    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    .line 335
    return-void
.end method

.method public setSecondPAssociatedUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "pAssociatedUri"    # Ljava/lang/String;

    .line 352
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 377
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration;->writeServices(Landroid/os/Parcel;)V

    .line 379
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPrivateUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_26

    .line 384
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 386
    :cond_26
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisteredPublicUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    :goto_32
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPreferredPublicUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEcmpStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    if-nez v0, :cond_71

    .line 403
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_79

    .line 405
    :cond_71
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    :goto_79
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration;->mOwnNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    return-void
.end method
