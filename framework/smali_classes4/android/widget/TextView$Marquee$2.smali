.class Landroid/widget/TextView$Marquee$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TextView$Marquee;

    .line 16642
    iput-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 6
    .param p1, "frameTimeNanos"    # J

    .line 16645
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->-$$Nest$fputmStatus(Landroid/widget/TextView$Marquee;B)V

    .line 16646
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmChoreographer(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/widget/TextView$Marquee;->-$$Nest$fputmLastAnimationMs(Landroid/widget/TextView$Marquee;J)V

    .line 16647
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$0:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    .line 16648
    return-void
.end method
