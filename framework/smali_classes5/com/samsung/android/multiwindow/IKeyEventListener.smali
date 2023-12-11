.class public interface abstract Lcom/samsung/android/multiwindow/IKeyEventListener;
.super Ljava/lang/Object;
.source "IKeyEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IKeyEventListener$Stub;,
        Lcom/samsung/android/multiwindow/IKeyEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IKeyEventListener"


# virtual methods
.method public abstract sendShortcutKeyWithFocusedTask(ILandroid/view/KeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
