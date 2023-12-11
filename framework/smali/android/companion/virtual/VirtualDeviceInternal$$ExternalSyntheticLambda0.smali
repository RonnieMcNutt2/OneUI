.class public final synthetic Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;


# instance fields
.field public final synthetic f$0:Landroid/companion/virtual/VirtualDeviceInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/virtual/VirtualDeviceInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;->f$0:Landroid/companion/virtual/VirtualDeviceInternal;

    return-void
.end method


# virtual methods
.method public final onClosed()V
    .registers 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$$ExternalSyntheticLambda0;->f$0:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->$r8$lambda$qTC8JVMLGc5alN4aOUS4qVsH78Q(Landroid/companion/virtual/VirtualDeviceInternal;)V

    return-void
.end method
