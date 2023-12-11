.class public abstract Landroid/text/SegmentFinder;
.super Ljava/lang/Object;
.source "SegmentFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/SegmentFinder$PrescribedSegmentFinder;
    }
.end annotation


# static fields
.field public static final DONE:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract nextEndBoundary(I)I
.end method

.method public abstract nextStartBoundary(I)I
.end method

.method public abstract previousEndBoundary(I)I
.end method

.method public abstract previousStartBoundary(I)I
.end method
