.class public final Landroid/content/om/OverlayManagerTransaction;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerTransaction$Request;,
        Landroid/content/om/OverlayManagerTransaction$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayManagerTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelfTargeting:Z


# direct methods
.method static bridge synthetic -$$Nest$smgenerateRegisterFabricatedOverlayRequest(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Request;
    .registers 1

    invoke-static {p0}, Landroid/content/om/OverlayManagerTransaction;->generateRegisterFabricatedOverlayRequest(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Request;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgenerateUnRegisterFabricatedOverlayRequest(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Request;
    .registers 1

    invoke-static {p0}, Landroid/content/om/OverlayManagerTransaction;->generateUnRegisterFabricatedOverlayRequest(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 318
    new-instance v0, Landroid/content/om/OverlayManagerTransaction$1;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayManagerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_33

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "request":I
    const-class v3, Landroid/content/om/OverlayIdentifier;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 107
    .local v3, "overlay":Landroid/content/om/OverlayIdentifier;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .local v5, "userId":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v4

    .line 109
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    new-instance v7, Landroid/content/om/OverlayManagerTransaction$Request;

    invoke-direct {v7, v2, v3, v5, v4}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "request":I
    .end local v3    # "overlay":Landroid/content/om/OverlayIdentifier;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 111
    .end local v1    # "i":I
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/om/OverlayManagerTransaction;->mSelfTargeting:Z

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/om/OverlayManagerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/om/OverlayManagerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .registers 5
    .param p2, "selfTargeting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;Z)V"
        }
    .end annotation

    .line 82
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayManagerTransaction$Request;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 87
    iput-object p1, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    .line 88
    iput-boolean p2, p0, Landroid/content/om/OverlayManagerTransaction;->mSelfTargeting:Z

    .line 89
    return-void

    .line 85
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/util/List;ZLandroid/content/om/OverlayManagerTransaction-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/om/OverlayManagerTransaction;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private static generateRegisterFabricatedOverlayRequest(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Request;
    .registers 6
    .param p0, "overlay"    # Landroid/content/om/FabricatedOverlay;

    .line 334
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "fabricated_overlay"

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Request;

    invoke-virtual {p0}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3, v0}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V

    return-object v1
.end method

.method private static generateUnRegisterFabricatedOverlayRequest(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Request;
    .registers 4
    .param p0, "overlayIdentifier"    # Landroid/content/om/OverlayIdentifier;

    .line 344
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v0, Landroid/content/om/OverlayManagerTransaction$Request;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;I)V

    return-object v0
.end method

.method public static newInstance()Landroid/content/om/OverlayManagerTransaction;
    .registers 3

    .line 98
    new-instance v0, Landroid/content/om/OverlayManagerTransaction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayManagerTransaction;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public getRequests()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method isSelfTargeting()Z
    .registers 2

    .line 382
    iget-boolean v0, p0, Landroid/content/om/OverlayManagerTransaction;->mSelfTargeting:Z

    return v0
.end method

.method public registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)V
    .registers 4
    .param p1, "overlay"    # Landroid/content/om/FabricatedOverlay;

    .line 362
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-static {p1}, Landroid/content/om/OverlayManagerTransaction;->generateRegisterFabricatedOverlayRequest(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OverlayManagerTransaction { mRequests = %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)V
    .registers 4
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;

    .line 375
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-static {p1}, Landroid/content/om/OverlayManagerTransaction;->generateUnRegisterFabricatedOverlayRequest(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 306
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 307
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_2b

    .line 309
    iget-object v2, p0, Landroid/content/om/OverlayManagerTransaction;->mRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 310
    .local v2, "req":Landroid/content/om/OverlayManagerTransaction$Request;
    iget v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 312
    iget v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v3, v2, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 308
    .end local v2    # "req":Landroid/content/om/OverlayManagerTransaction$Request;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 315
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method
