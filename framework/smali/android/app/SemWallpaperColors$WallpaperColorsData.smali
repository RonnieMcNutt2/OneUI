.class Landroid/app/SemWallpaperColors$WallpaperColorsData;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperColorsData"
.end annotation


# instance fields
.field private mExternalKey:J

.field private mInternalKey:I

.field private mItem:Landroid/app/SemWallpaperColors$Item;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/SemWallpaperColors;


# direct methods
.method public constructor <init>(Landroid/app/SemWallpaperColors;JI)V
    .registers 13
    .param p1, "this$0"    # Landroid/app/SemWallpaperColors;
    .param p2, "externalKey"    # J
    .param p4, "internalKey"    # I

    .line 1675
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->-$$Nest$fgetmArea(Landroid/app/SemWallpaperColors;)Landroid/app/SemWallpaperColorsArea;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JILandroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    .line 1676
    return-void
.end method

.method public constructor <init>(Landroid/app/SemWallpaperColors;JILandroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V
    .registers 7
    .param p1, "this$0"    # Landroid/app/SemWallpaperColors;
    .param p2, "externalKey"    # J
    .param p4, "internalKey"    # I
    .param p5, "rect"    # Landroid/graphics/Rect;
    .param p6, "item"    # Landroid/app/SemWallpaperColors$Item;

    .line 1682
    iput-object p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->this$0:Landroid/app/SemWallpaperColors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1685
    iput-wide p2, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mExternalKey:J

    .line 1686
    iput p4, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mInternalKey:I

    .line 1687
    iput-object p5, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    .line 1688
    iput-object p6, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 1689
    return-void
.end method

.method public constructor <init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V
    .registers 11
    .param p1, "this$0"    # Landroid/app/SemWallpaperColors;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "item"    # Landroid/app/SemWallpaperColors$Item;

    .line 1679
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JILandroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    .line 1680
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .registers 4

    .line 1726
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1727
    .local v0, "clone":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    .line 1728
    iget-object v1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->clone()Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1730
    return-object v0

    .line 1731
    .end local v0    # "clone":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :catch_18
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 1735
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1668
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;

    move-result-object v0

    return-object v0
.end method

.method public getExternalKey()J
    .registers 3

    .line 1696
    iget-wide v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mExternalKey:J

    return-wide v0
.end method

.method public getInternalKey()I
    .registers 2

    .line 1704
    iget v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mInternalKey:I

    return v0
.end method

.method public getItem()Landroid/app/SemWallpaperColors$Item;
    .registers 2

    .line 1720
    iget-object v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 3

    .line 1712
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public setExternalKey(J)V
    .registers 3
    .param p1, "externalKey"    # J

    .line 1692
    iput-wide p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mExternalKey:J

    .line 1693
    return-void
.end method

.method public setInternalKey(I)V
    .registers 2
    .param p1, "internalKey"    # I

    .line 1700
    iput p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mInternalKey:I

    .line 1701
    return-void
.end method

.method public setItem(Landroid/app/SemWallpaperColors$Item;)V
    .registers 2
    .param p1, "item"    # Landroid/app/SemWallpaperColors$Item;

    .line 1716
    iput-object p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    .line 1717
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1708
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    .line 1709
    return-void
.end method
