.class Landroid/app/Activity$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/Activity;

    .line 9853
    iput-object p1, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 9856
    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Activity;->-$$Nest$fputmInOutsideLongPress(Landroid/app/Activity;Z)V

    .line 9857
    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$mapplyTransparentPopOver(Landroid/app/Activity;)V

    .line 9858
    return-void
.end method
