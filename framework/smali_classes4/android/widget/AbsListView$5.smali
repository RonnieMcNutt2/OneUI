.class Landroid/widget/AbsListView$5;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 9269
    iput-object p1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 9271
    iget-object v0, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$msemPlayGotoToFadeOut(Landroid/widget/AbsListView;)V

    .line 9272
    return-void
.end method
