.class Landroid/media/midi/MidiManager$2;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiManager;

.field final synthetic val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

.field final synthetic val$handlerF:Landroid/os/Handler;

.field final synthetic val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;

    .line 374
    iput-object p1, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$2;->val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

    iput-object p3, p0, Landroid/media/midi/MidiManager$2;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p4, p0, Landroid/media/midi/MidiManager$2;->val$handlerF:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 378
    if-eqz p1, :cond_19

    .line 379
    new-instance v6, Landroid/media/midi/MidiDevice;

    iget-object v1, p0, Landroid/media/midi/MidiManager$2;->val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

    iget-object v0, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v0}, Landroid/media/midi/MidiManager;->-$$Nest$fgetmService(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    move-result-object v3

    iget-object v0, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v0}, Landroid/media/midi/MidiManager;->-$$Nest$fgetmToken(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    move-result-object v4

    move-object v0, v6

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .local v0, "device":Landroid/media/midi/MidiDevice;
    goto :goto_1a

    .line 381
    .end local v0    # "device":Landroid/media/midi/MidiDevice;
    :cond_19
    const/4 v0, 0x0

    .line 383
    .restart local v0    # "device":Landroid/media/midi/MidiDevice;
    :goto_1a
    iget-object v1, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v3, p0, Landroid/media/midi/MidiManager$2;->val$handlerF:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3}, Landroid/media/midi/MidiManager;->-$$Nest$msendOpenDeviceResponse(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 384
    return-void
.end method
