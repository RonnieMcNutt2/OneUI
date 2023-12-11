.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemUiVisibilityListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 2050
    return-void
.end method
