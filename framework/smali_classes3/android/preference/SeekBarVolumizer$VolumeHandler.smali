.class Landroid/preference/SeekBarVolumizer$VolumeHandler;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2

    .line 1076
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$VolumeHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$VolumeHandler;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1079
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1080
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_2b

    .line 1082
    :pswitch_a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1083
    .local v1, "group":I
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne v2, v1, :cond_2a

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    goto :goto_2a

    .line 1087
    :cond_24
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2b

    .line 1085
    :cond_2a
    :goto_2a
    return-void

    .line 1090
    .end local v1    # "group":I
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
