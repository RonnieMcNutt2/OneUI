.class public final Landroid/view/WindowInsets$Side;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Side$InsetsSide;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x8

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x4

.field public static final TOP:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    return-void
.end method

.method public static all()I
    .registers 1

    .line 1740
    const/16 v0, 0xf

    return v0
.end method
