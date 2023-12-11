.class public abstract Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.super Ljava/lang/Object;
.source "CocktailBarManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V
.end method

.method public abstract topAppWindowChanged(IZZ)V
.end method

.method public abstract turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
.end method

.method public abstract updateSysfsGripDisableFromWindowManager(Z)V
.end method

.method public abstract wakupCocktailBarFromWindowManager(ZII)V
.end method
