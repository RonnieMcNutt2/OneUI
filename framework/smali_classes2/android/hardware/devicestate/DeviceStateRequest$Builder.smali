.class public final Landroid/hardware/devicestate/DeviceStateRequest$Builder;
.super Ljava/lang/Object;
.source "DeviceStateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private final mRequestedState:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .param p1, "requestedState"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->mRequestedState:I

    .line 97
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/devicestate/DeviceStateRequest$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/devicestate/DeviceStateRequest;
    .registers 5

    .line 115
    new-instance v0, Landroid/hardware/devicestate/DeviceStateRequest;

    iget v1, p0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->mRequestedState:I

    iget v2, p0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->mFlags:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateRequest;-><init>(IILandroid/hardware/devicestate/DeviceStateRequest-IA;)V

    return-object v0
.end method

.method public setFlags(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 105
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->mFlags:I

    .line 106
    return-object p0
.end method
