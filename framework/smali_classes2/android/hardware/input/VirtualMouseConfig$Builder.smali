.class public final Landroid/hardware/input/VirtualMouseConfig$Builder;
.super Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.source "VirtualMouseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualMouseConfig$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualMouseConfig;
    .registers 3

    .line 72
    new-instance v0, Landroid/hardware/input/VirtualMouseConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualMouseConfig;-><init>(Landroid/hardware/input/VirtualMouseConfig$Builder;Landroid/hardware/input/VirtualMouseConfig-IA;)V

    return-object v0
.end method
