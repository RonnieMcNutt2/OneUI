.class public interface abstract Landroid/text/method/OffsetMapping;
.super Ljava/lang/Object;
.source "OffsetMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/OffsetMapping$TextUpdate;,
        Landroid/text/method/OffsetMapping$MapStrategy;
    }
.end annotation


# static fields
.field public static final MAP_STRATEGY_CHARACTER:I = 0x0

.field public static final MAP_STRATEGY_CURSOR:I = 0x1


# virtual methods
.method public abstract originalToTransformed(II)I
.end method

.method public abstract originalToTransformed(Landroid/text/method/OffsetMapping$TextUpdate;)V
.end method

.method public abstract transformedToOriginal(II)I
.end method
