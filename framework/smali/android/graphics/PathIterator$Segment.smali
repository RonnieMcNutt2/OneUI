.class public Landroid/graphics/PathIterator$Segment;
.super Ljava/lang/Object;
.source "PathIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation


# instance fields
.field private final mConicWeight:F

.field private final mPoints:[F

.field private final mVerb:I


# direct methods
.method constructor <init>(I[FF)V
    .registers 4
    .param p1, "verb"    # I
    .param p2, "points"    # [F
    .param p3, "conicWeight"    # F

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Landroid/graphics/PathIterator$Segment;->mVerb:I

    .line 280
    iput-object p2, p0, Landroid/graphics/PathIterator$Segment;->mPoints:[F

    .line 281
    iput p3, p0, Landroid/graphics/PathIterator$Segment;->mConicWeight:F

    .line 282
    return-void
.end method


# virtual methods
.method public getConicWeight()F
    .registers 2

    .line 275
    iget v0, p0, Landroid/graphics/PathIterator$Segment;->mConicWeight:F

    return v0
.end method

.method public getPoints()[F
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/graphics/PathIterator$Segment;->mPoints:[F

    return-object v0
.end method

.method public getVerb()I
    .registers 2

    .line 242
    iget v0, p0, Landroid/graphics/PathIterator$Segment;->mVerb:I

    return v0
.end method
