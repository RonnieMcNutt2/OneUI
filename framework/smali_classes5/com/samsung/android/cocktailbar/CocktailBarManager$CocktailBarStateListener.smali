.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarStateListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1860
    return-void
.end method


# virtual methods
.method public onCocktailBarPositionChanged(I)V
    .registers 2
    .param p1, "position"    # I

    .line 1886
    return-void
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .registers 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1870
    return-void
.end method

.method public onCocktailBarVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 1878
    return-void
.end method

.method public onCocktailBarWindowTypeChanged(I)V
    .registers 2
    .param p1, "windowType"    # I

    .line 1894
    return-void
.end method
