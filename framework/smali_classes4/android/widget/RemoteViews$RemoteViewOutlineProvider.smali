.class public final Landroid/widget/RemoteViews$RemoteViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteViewOutlineProvider"
.end annotation


# instance fields
.field private final mRadius:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "radius"    # F

    .line 3966
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 3967
    iput p1, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    .line 3968
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 3977
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3980
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3981
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    .line 3977
    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 3983
    return-void
.end method

.method public getRadius()F
    .registers 2

    .line 3972
    iget v0, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->mRadius:F

    return v0
.end method
