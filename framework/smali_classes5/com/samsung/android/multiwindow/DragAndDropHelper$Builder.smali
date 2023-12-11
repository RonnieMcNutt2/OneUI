.class public Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInitialDropTargetVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;->mInitialDropTargetVisible:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/multiwindow/DragAndDropHelper;
    .registers 4

    .line 104
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;->mInitialDropTargetVisible:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/DragAndDropHelper;-><init>(ZLcom/samsung/android/multiwindow/DragAndDropHelper-IA;)V

    return-object v0
.end method

.method public setInitialDropTargetVisible(Z)Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;
    .registers 2
    .param p1, "visible"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;->mInitialDropTargetVisible:Z

    .line 99
    return-object p0
.end method
