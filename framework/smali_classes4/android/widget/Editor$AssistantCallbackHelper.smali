.class public Landroid/widget/Editor$AssistantCallbackHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssistantCallbackHelper"
.end annotation


# instance fields
.field private final mAssistClickHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHelper:Landroid/widget/SelectionActionModeHelper;

.field private mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "helper"    # Landroid/widget/SelectionActionModeHelper;

    .line 5128
    iput-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    .line 5129
    iput-object p2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mHelper:Landroid/widget/SelectionActionModeHelper;

    .line 5130
    return-void
.end method

.method private addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "action"    # Landroid/app/RemoteAction;
    .param p3, "itemId"    # I
    .param p4, "order"    # I
    .param p5, "showAsAction"    # I
    .param p6, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 5196
    const v0, 0x1020041

    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, p3, p4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 5197
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 5198
    .local v0, "item":Landroid/view/MenuItem;
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 5199
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 5201
    :cond_2e
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5202
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    .line 5203
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 5202
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5204
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$maddAction(Landroid/widget/Editor$AccessibilitySmartActions;Landroid/app/RemoteAction;)V

    .line 5205
    if-eqz p6, :cond_4c

    .line 5206
    invoke-interface {v0, p6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5208
    :cond_4c
    return-object v0
.end method

.method private clearAssistMenuItems(Landroid/view/Menu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5212
    const/4 v0, 0x0

    .line 5213
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 5214
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5215
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x1020041

    if-ne v2, v3, :cond_1c

    .line 5216
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 5217
    goto :goto_1

    .line 5219
    :cond_1c
    nop

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    add-int/lit8 v0, v0, 0x1

    .line 5220
    goto :goto_1

    .line 5221
    :cond_20
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$mreset(Landroid/widget/Editor$AccessibilitySmartActions;)V

    .line 5222
    return-void
.end method

.method private createAssistMenuItemPendingIntentRequestCode()I
    .registers 4

    .line 5238
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 5241
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5239
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 5240
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 5239
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5241
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_34

    .line 5242
    :cond_33
    const/4 v0, 0x0

    .line 5238
    :goto_34
    return v0
.end method

.method private hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z
    .registers 3
    .param p1, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 5226
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    .line 5227
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5227
    :cond_10
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 5228
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 5226
    :goto_20
    return v0
.end method

.method private shouldEnableAssistMenuItems()Z
    .registers 2

    .line 5232
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5233
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    .line 5234
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 5232
    :goto_23
    return v0
.end method


# virtual methods
.method public clearCallbackHandlers()V
    .registers 2

    .line 5136
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5137
    return-void
.end method

.method public getOnClickListener(Landroid/view/MenuItem;)Landroid/view/View$OnClickListener;
    .registers 3
    .param p1, "key"    # Landroid/view/MenuItem;

    .line 5143
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public onAssistMenuItemClicked(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "assistMenuItem"    # Landroid/view/MenuItem;

    .line 5249
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x1020041

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5251
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    .line 5252
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 5253
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-eqz v1, :cond_56

    if-nez v0, :cond_23

    goto :goto_56

    .line 5258
    :cond_23
    invoke-virtual {p0, p1}, Landroid/widget/Editor$AssistantCallbackHelper;->getOnClickListener(Landroid/view/MenuItem;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 5259
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    if-nez v1, :cond_45

    .line 5260
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 5261
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_45

    .line 5262
    iget-object v4, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 5264
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 5265
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 5263
    invoke-static {v4, v3, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 5262
    invoke-static {v4}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 5268
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_45
    if-eqz v1, :cond_55

    .line 5269
    iget-object v3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 5270
    iget-object v3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 5273
    :cond_55
    return v2

    .line 5255
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_56
    :goto_56
    return v2
.end method

.method public updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 14
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 5152
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 5153
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    if-ne v1, v0, :cond_b

    .line 5155
    return-void

    .line 5157
    :cond_b
    invoke-direct {p0, p1}, Landroid/widget/Editor$AssistantCallbackHelper;->clearAssistMenuItems(Landroid/view/Menu;)V

    .line 5158
    if-nez v0, :cond_11

    .line 5159
    return-void

    .line 5161
    :cond_11
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-nez v1, :cond_18

    .line 5162
    return-void

    .line 5164
    :cond_18
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_43

    .line 5166
    nop

    .line 5167
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/RemoteAction;

    const v5, 0x1020041

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 5166
    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/widget/Editor$AssistantCallbackHelper;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5170
    .local v1, "item":Landroid/view/MenuItem;
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .end local v1    # "item":Landroid/view/MenuItem;
    goto :goto_89

    .line 5171
    :cond_43
    invoke-direct {p0, v0}, Landroid/widget/Editor$AssistantCallbackHelper;->hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 5173
    nop

    .line 5175
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5173
    const v3, 0x1020041

    invoke-interface {p1, v3, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5176
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5177
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5178
    .restart local v1    # "item":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5179
    iget-object v2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    iget-object v3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 5180
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5181
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 5182
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 5180
    invoke-static {v3, v4, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 5179
    invoke-static {v3}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 5171
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_89
    :goto_89
    nop

    .line 5184
    :goto_8a
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5185
    .local v1, "count":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_93
    if-ge v2, v1, :cond_af

    .line 5187
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/app/RemoteAction;

    const/4 v7, 0x0

    add-int/lit8 v3, v2, 0x32

    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Landroid/widget/Editor$AssistantCallbackHelper;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 5185
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 5191
    .end local v2    # "i":I
    :cond_af
    iput-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 5192
    return-void
.end method
