.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .line 921
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .registers 10
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "valueChanged":Z
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_88

    goto :goto_68

    .line 940
    :pswitch_6
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v2

    if-eq v2, p2, :cond_f

    .line 941
    const/4 v0, 0x1

    .line 943
    :cond_f
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V

    goto :goto_68

    .line 927
    :pswitch_15
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    if-eq v2, p2, :cond_1e

    .line 928
    const/4 v0, 0x1

    .line 930
    :cond_1e
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmAllowAutoAdvance(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    if-eqz p3, :cond_2b

    move v2, v1

    goto :goto_2c

    :cond_2b
    move v2, v3

    .line 931
    .local v2, "isTransition":Z
    :goto_2c
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    if-nez v2, :cond_32

    move v5, v1

    goto :goto_33

    :cond_32
    move v5, v3

    :goto_33
    invoke-static {v4, p2, v1, v5, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 932
    if-eqz v2, :cond_68

    .line 933
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v4, v1, v1, v3}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 935
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v1, p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$mgetLocalizedHour(Landroid/widget/TimePickerClockDelegate;I)I

    move-result v1

    .line 936
    .local v1, "localizedHour":I
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v5}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmSelectMinutes(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 937
    .end local v1    # "localizedHour":I
    nop

    .line 947
    .end local v2    # "isTransition":Z
    :cond_68
    :goto_68
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v1, :cond_87

    if-eqz v0, :cond_87

    .line 948
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v4}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 950
    :cond_87
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method
