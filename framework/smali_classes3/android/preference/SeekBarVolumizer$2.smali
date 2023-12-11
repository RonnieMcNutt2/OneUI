.class Landroid/preference/SeekBarVolumizer$2;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/SeekBarVolumizer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    .line 829
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$2;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 832
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$2;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 833
    return-void
.end method
