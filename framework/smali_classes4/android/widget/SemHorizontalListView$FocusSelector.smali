.class Landroid/widget/SemHorizontalListView$FocusSelector;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionLeft:I

.field final synthetic this$0:Landroid/widget/SemHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/SemHorizontalListView;)V
    .registers 2

    .line 1502
    iput-object p1, p0, Landroid/widget/SemHorizontalListView$FocusSelector;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SemHorizontalListView;Landroid/widget/SemHorizontalListView$FocusSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView$FocusSelector;-><init>(Landroid/widget/SemHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1513
    iget-object v0, p0, Landroid/widget/SemHorizontalListView$FocusSelector;->this$0:Landroid/widget/SemHorizontalListView;

    iget v1, p0, Landroid/widget/SemHorizontalListView$FocusSelector;->mPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView$FocusSelector;->mPositionLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    .line 1514
    return-void
.end method

.method public setup(II)Landroid/widget/SemHorizontalListView$FocusSelector;
    .registers 3
    .param p1, "position"    # I
    .param p2, "left"    # I

    .line 1507
    iput p1, p0, Landroid/widget/SemHorizontalListView$FocusSelector;->mPosition:I

    .line 1508
    iput p2, p0, Landroid/widget/SemHorizontalListView$FocusSelector;->mPositionLeft:I

    .line 1509
    return-object p0
.end method
