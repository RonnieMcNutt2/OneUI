.class final Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFeatureState"
.end annotation


# instance fields
.field alpha:I

.field child:Landroid/graphics/drawable/Drawable;

.field cur:Landroid/graphics/drawable/Drawable;

.field curAlpha:I

.field def:Landroid/graphics/drawable/Drawable;

.field final featureId:I

.field local:Landroid/graphics/drawable/Drawable;

.field resid:I

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "_featureId"    # I

    .line 3548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3566
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 3568
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3549
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->featureId:I

    .line 3550
    return-void
.end method
