.class final Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticKeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 9350
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/KeyEvent;)V
    .registers 20
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 9352
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 9353
    return-void

    .line 9356
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 9357
    .local v0, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 9358
    .local v1, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 9361
    .local v2, "metaState":I
    nop

    .line 9362
    invoke-virtual {v0, v1, v2}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v3

    .line 9363
    .local v3, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    if-eqz v3, :cond_55

    .line 9364
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    .line 9365
    .local v4, "flags":I
    nop

    .line 9366
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 9367
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    iget v10, v3, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 9368
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    iget v12, v3, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 9369
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 9370
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    .line 9365
    move v15, v4

    invoke-static/range {v5 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v5

    .line 9371
    .local v5, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 9372
    move-object/from16 v6, p0

    iget-object v7, v6, Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v7, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_57

    .line 9363
    .end local v4    # "flags":I
    .end local v5    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_55
    move-object/from16 v6, p0

    .line 9374
    :goto_57
    return-void
.end method
