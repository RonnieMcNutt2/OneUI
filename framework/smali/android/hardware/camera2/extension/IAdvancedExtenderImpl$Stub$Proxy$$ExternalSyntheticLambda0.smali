.class public final synthetic Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v0, p1, p2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub$Proxy;->lambda$init$1(Landroid/os/Parcel;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method
