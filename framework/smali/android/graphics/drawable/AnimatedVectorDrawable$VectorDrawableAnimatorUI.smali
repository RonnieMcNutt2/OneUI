.class Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableAnimatorUI"
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsInfinite:Z

.field private mListenerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSet:Landroid/animation/AnimatorSet;

.field private mTotalDuration:J


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    .line 1095
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    .line 1100
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1101
    return-void
.end method

.method private invalidateOwningView()V
    .registers 2

    .line 1231
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1232
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .registers 2

    .line 1165
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public end()V
    .registers 2

    .line 1139
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1140
    return-void

    .line 1142
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1143
    return-void
.end method

.method public getTotalDuration()J
    .registers 3

    .line 1236
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mTotalDuration:J

    return-wide v0
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .registers 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .line 1105
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_47

    .line 1112
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    .line 1113
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mTotalDuration:J

    .line 1114
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    .line 1117
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 1119
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1121
    .end local v0    # "i":I
    :cond_3e
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    .line 1124
    :cond_46
    return-void

    .line 1107
    :cond_47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInfinite()Z
    .registers 2

    .line 1211
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mIsInfinite:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1206
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 1201
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1194
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1195
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    .line 1197
    :cond_d
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1216
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1217
    return-void

    .line 1219
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 1220
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1182
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_d

    .line 1183
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 1184
    return-void

    .line 1186
    :cond_9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1188
    :cond_d
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1190
    :goto_10
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1147
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1148
    return-void

    .line 1150
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->start()V

    .line 1151
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1152
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1224
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1225
    return-void

    .line 1227
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 1228
    return-void
.end method

.method public reverse()V
    .registers 2

    .line 1156
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_5

    .line 1157
    return-void

    .line 1159
    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    .line 1160
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    .line 1161
    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1170
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_15

    .line 1171
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    .line 1174
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1176
    :cond_15
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1178
    :goto_18
    return-void
.end method

.method public start()V
    .registers 2

    .line 1130
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    .line 1133
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->mSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1134
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;->invalidateOwningView()V

    .line 1135
    return-void

    .line 1131
    :cond_14
    :goto_14
    return-void
.end method
