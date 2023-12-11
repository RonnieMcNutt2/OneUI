.class public Landroid/text/Highlights;
.super Ljava/lang/Object;
.source "Highlights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Highlights$Builder;
    }
.end annotation


# instance fields
.field private final mHighlights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Paint;",
            "[I>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Paint;",
            "[I>;>;)V"
        }
    .end annotation

    .line 36
    .local p1, "highlights":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/graphics/Paint;[I>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/text/Highlights-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/Highlights;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getPaint(I)Landroid/graphics/Paint;
    .registers 3
    .param p1, "index"    # I

    .line 62
    iget-object v0, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRanges(I)[I
    .registers 3
    .param p1, "index"    # I

    .line 81
    iget-object v0, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
