.class public final Landroid/graphics/fonts/FontFileUpdateRequest;
.super Ljava/lang/Object;
.source "FontFileUpdateRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mSignature:[B


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 3
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "signature"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroid/graphics/fonts/FontFileUpdateRequest;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 47
    iput-object p2, p0, Landroid/graphics/fonts/FontFileUpdateRequest;->mSignature:[B

    .line 48
    return-void
.end method


# virtual methods
.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/graphics/fonts/FontFileUpdateRequest;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/graphics/fonts/FontFileUpdateRequest;->mSignature:[B

    return-object v0
.end method
