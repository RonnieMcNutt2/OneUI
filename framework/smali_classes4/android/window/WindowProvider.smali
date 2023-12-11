.class public interface abstract Landroid/window/WindowProvider;
.super Ljava/lang/Object;
.source "WindowProvider.java"


# static fields
.field public static final KEY_IS_WINDOW_PROVIDER_SERVICE:Ljava/lang/String; = "android.windowContext.isWindowProviderService"


# virtual methods
.method public abstract getWindowContextOptions()Landroid/os/Bundle;
.end method

.method public abstract getWindowContextToken()Landroid/os/IBinder;
.end method

.method public abstract getWindowType()I
.end method
