.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.source "SprAttributeStroke.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(B)V

    .line 10
    return-void
.end method

.method public constructor <init>(BI)V
    .registers 4
    .param p1, "type"    # B
    .param p2, "value"    # I

    .line 13
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BBI)V

    .line 14
    return-void
.end method

.method public constructor <init>(BLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .registers 4
    .param p1, "type"    # B
    .param p2, "gradient"    # Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 17
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .registers 3
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 22
    return-void
.end method
