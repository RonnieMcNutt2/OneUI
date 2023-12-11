.class Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 2

    .line 4377
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .registers 2

    .line 4381
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    # invokes: Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$000(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 4382
    return-void
.end method

.method public sameWindow()Z
    .registers 3

    .line 4385
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    # invokes: Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$100(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
