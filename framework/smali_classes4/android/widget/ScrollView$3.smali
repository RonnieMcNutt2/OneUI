.class Landroid/widget/ScrollView$3;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ScrollView;

    .line 3280
    iput-object p1, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 3282
    iget-object v0, p0, Landroid/widget/ScrollView$3;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-$$Nest$msemPlayGoToTopFadeOut(Landroid/widget/ScrollView;)V

    .line 3283
    return-void
.end method
