.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static final ID_BOLD:I = 0x102005b

.field private static final ID_ITALIC:I = 0x102005c

.field private static final ID_UNDERLINE:I = 0x102005d


# instance fields
.field private mStyleShortcutsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 104
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget-object v2, Lcom/android/internal/R$styleable;->EditText:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 107
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 108
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_28

    .line 109
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 110
    .local v5, "attr":I
    packed-switch v5, :pswitch_data_2a

    goto :goto_25

    .line 112
    :pswitch_1f
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    .line 108
    .end local v5    # "attr":I
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 116
    .end local v4    # "i":I
    :cond_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method private performStylingAction(I)Z
    .registers 9
    .param p1, "actionId"    # I

    .line 256
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 257
    .local v0, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 258
    .local v1, "selectionEnd":I
    const/4 v2, 0x0

    if-ltz v0, :cond_39

    if-gez v1, :cond_e

    goto :goto_39

    .line 261
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 262
    .local v3, "min":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 265
    .local v4, "max":I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 266
    .local v5, "spannable":Landroid/text/Spannable;
    const v6, 0x102005b

    if-ne p1, v6, :cond_24

    .line 267
    invoke-static {v5, v3, v4}, Landroid/text/style/SpanUtils;->toggleBold(Landroid/text/Spannable;II)Z

    move-result v2

    return v2

    .line 268
    :cond_24
    const v6, 0x102005c

    if-ne p1, v6, :cond_2e

    .line 269
    invoke-static {v5, v3, v4}, Landroid/text/style/SpanUtils;->toggleItalic(Landroid/text/Spannable;II)Z

    move-result v2

    return v2

    .line 270
    :cond_2e
    const v6, 0x102005d

    if-ne p1, v6, :cond_38

    .line 271
    invoke-static {v5, v3, v4}, Landroid/text/style/SpanUtils;->toggleUnderline(Landroid/text/Spannable;II)Z

    move-result v2

    return v2

    .line 274
    :cond_38
    return v2

    .line 259
    .end local v3    # "min":I
    .end local v4    # "max":I
    .end local v5    # "spannable":Landroid/text/Spannable;
    :cond_39
    :goto_39
    return v2
.end method


# virtual methods
.method public extendSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .line 177
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 178
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 201
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .line 130
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .registers 2

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 3

    .line 135
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_8

    .line 138
    const/4 v1, 0x0

    return-object v1

    .line 140
    :cond_8
    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_10

    .line 141
    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    return-object v1

    .line 143
    :cond_10
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 144
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    return-object v1
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isStyleShortcutEnabled()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 223
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 225
    sparse-switch p1, :sswitch_data_48

    goto :goto_42

    .line 237
    :sswitch_c
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 238
    const v0, 0x102005d

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 232
    :sswitch_1e
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 233
    const v0, 0x102005c

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 227
    :sswitch_30
    iget-boolean v0, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 228
    const v0, 0x102005b

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 243
    :cond_42
    :goto_42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_48
    .sparse-switch
        0x1e -> :sswitch_30
        0x25 -> :sswitch_1e
        0x31 -> :sswitch_c
    .end sparse-switch
.end method

.method public onTextContextMenuItem(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 249
    const v0, 0x102005b

    if-eq p1, v0, :cond_15

    const v0, 0x102005c

    if-eq p1, v0, :cond_15

    const v0, 0x102005d

    if-ne p1, v0, :cond_10

    goto :goto_15

    .line 252
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 250
    :cond_15
    :goto_15
    invoke-direct {p0, p1}, Landroid/widget/EditText;->performStylingAction(I)Z

    move-result v0

    return v0
.end method

.method public selectAll()V
    .registers 2

    .line 170
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 171
    return-void
.end method

.method public semHideCursorControllers()V
    .registers 1

    .line 217
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 218
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 4
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .line 192
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_8

    .line 196
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    return-void

    .line 193
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .line 163
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 164
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .line 156
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 157
    return-void
.end method

.method public setStyleShortcutsEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 283
    iput-boolean p1, p0, Landroid/widget/EditText;->mStyleShortcutsEnabled:Z

    .line 284
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 149
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 150
    return-void
.end method

.method protected supportsAutoSizeText()Z
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method
