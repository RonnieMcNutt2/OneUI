.class Landroid/transition/ChangeBounds$3;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 101
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "viewBounds"    # Landroid/transition/ChangeBounds$ViewBounds;

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 101
    check-cast p1, Landroid/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$3;->get(Landroid/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "viewBounds"    # Landroid/transition/ChangeBounds$ViewBounds;
    .param p2, "bottomRight"    # Landroid/graphics/PointF;

    .line 104
    invoke-virtual {p1, p2}, Landroid/transition/ChangeBounds$ViewBounds;->setBottomRight(Landroid/graphics/PointF;)V

    .line 105
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 101
    check-cast p1, Landroid/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$3;->set(Landroid/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
