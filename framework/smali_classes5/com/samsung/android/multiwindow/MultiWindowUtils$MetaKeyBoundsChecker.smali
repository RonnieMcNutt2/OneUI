.class public Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;
.super Ljava/lang/Object;
.source "MultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaKeyBoundsChecker"
.end annotation


# static fields
.field public static final sInvalidBounds:Landroid/graphics/Rect;

.field public static final sMinimizeBounds:Landroid/graphics/Rect;

.field public static final sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x3

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInvalidBounds(Landroid/graphics/Rect;)Z
    .registers 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 139
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMinimizeBounds(Landroid/graphics/Rect;)Z
    .registers 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 143
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMoveToDefaultDisplayBounds(Landroid/graphics/Rect;)Z
    .registers 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 147
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->sMoveToDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
