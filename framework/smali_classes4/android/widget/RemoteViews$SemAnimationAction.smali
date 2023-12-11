.class Landroid/widget/RemoteViews$SemAnimationAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemAnimationAction"
.end annotation


# static fields
.field public static final TAG:I = 0x6b

.field static final TYPE_BASIC_ANIMATION:I = 0x5

.field static final TYPE_DRAWABLE_ANIMATION:I = 0x1

.field static final TYPE_DYNAMIC_ANIMATION:I = 0x4

.field static final TYPE_PROPERTY_ANIMATION:I = 0x3

.field static final TYPE_VIEW_ANIMATION:I = 0x2


# instance fields
.field animation:Landroid/widget/SemRemoteViewsAnimation;

.field animationType:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V
    .registers 4
    .param p2, "animationType"    # I
    .param p3, "animation"    # Landroid/widget/SemRemoteViewsAnimation;

    .line 8720
    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8721
    iput p2, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    .line 8722
    iput-object p3, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    .line 8723
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 8724
    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    .line 8726
    packed-switch p1, :pswitch_data_48

    goto :goto_47

    .line 8740
    :pswitch_10
    sget-object p1, Landroid/widget/SemRemoteViewsBasicAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    .line 8741
    goto :goto_47

    .line 8737
    :pswitch_1b
    sget-object p1, Landroid/widget/SemRemoteViewsValueAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    .line 8738
    goto :goto_47

    .line 8734
    :pswitch_26
    sget-object p1, Landroid/widget/SemRemoteViewsPropertyAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    .line 8735
    goto :goto_47

    .line 8731
    :pswitch_31
    sget-object p1, Landroid/widget/SemRemoteViewsViewAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    .line 8732
    goto :goto_47

    .line 8728
    :pswitch_3c
    sget-object p1, Landroid/widget/SemRemoteViewsDrawableAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    .line 8729
    nop

    .line 8746
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_31
        :pswitch_26
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 8774
    iget-object v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    if-eqz v0, :cond_7

    .line 8775
    invoke-virtual {v0, p1}, Landroid/widget/SemRemoteViewsAnimation;->play(Landroid/view/View;)V

    .line 8777
    :cond_7
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .line 8779
    const-string v0, "SemAnimationAction"

    return-object v0
.end method

.method public getActionTag()I
    .registers 2

    .line 8785
    const/16 v0, 0x6b

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8749
    iget v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8750
    iget v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 8764
    :pswitch_b
    iget-object v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast v0, Landroid/widget/SemRemoteViewsBasicAnimation;

    invoke-static {v0, p1}, Landroid/widget/SemRemoteViewsBasicAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsBasicAnimation;Landroid/os/Parcel;)V

    .line 8765
    goto :goto_33

    .line 8761
    :pswitch_13
    iget-object v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast v0, Landroid/widget/SemRemoteViewsValueAnimation;

    invoke-static {v0, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/os/Parcel;)V

    .line 8762
    goto :goto_33

    .line 8758
    :pswitch_1b
    iget-object v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast v0, Landroid/widget/SemRemoteViewsPropertyAnimation;

    invoke-static {v0, p1}, Landroid/widget/SemRemoteViewsPropertyAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsPropertyAnimation;Landroid/os/Parcel;)V

    .line 8759
    goto :goto_33

    .line 8755
    :pswitch_23
    iget-object v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast v0, Landroid/widget/SemRemoteViewsViewAnimation;

    invoke-static {v0, p1}, Landroid/widget/SemRemoteViewsViewAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsViewAnimation;Landroid/os/Parcel;)V

    .line 8756
    goto :goto_33

    .line 8752
    :pswitch_2b
    iget-object v0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast v0, Landroid/widget/SemRemoteViewsDrawableAnimation;

    invoke-static {v0, p1}, Landroid/widget/SemRemoteViewsDrawableAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsDrawableAnimation;Landroid/os/Parcel;)V

    .line 8753
    nop

    .line 8770
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
