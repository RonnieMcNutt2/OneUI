.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemManagerStateChangedListenerWrapper"
.end annotation


# instance fields
.field public final mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1833
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1834
    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .registers 4
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1838
    new-instance v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;-><init>()V

    .line 1839
    .local v0, "semStateInfo":Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->position:I

    .line 1840
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->visibility:I

    .line 1841
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    .line 1842
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V

    .line 1843
    return-void
.end method
