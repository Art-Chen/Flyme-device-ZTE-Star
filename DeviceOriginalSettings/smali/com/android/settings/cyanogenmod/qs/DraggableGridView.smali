.class public Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;
.super Landroid/view/ViewGroup;
.source "DraggableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;,
        Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    }
.end annotation


# instance fields
.field protected mChildSize:I

.field private mDefaultColor:I

.field protected mDragged:I

.field protected mEnabled:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIsDelete:Z

.field protected mLastDelta:F

.field protected mLastTarget:I

.field protected mLastX:I

.field protected mLastY:I

.field protected mLeftOffset:I

.field protected final mNewPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

.field protected mPadding:I

.field protected mScroll:I

.field protected mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

.field protected mTouching:Z

.field protected mUpdateTask:Ljava/lang/Runnable;

.field private mUseLargerFirstRow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    .line 49
    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 50
    iput-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    .line 55
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    .line 58
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$1;-><init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUpdateTask:Ljava/lang/Runnable;

    .line 83
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setListeners()V

    .line 84
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDefaultColor:I

    .line 86
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 118
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method protected animateDragging(Z)Ljava/util/List;
    .locals 11
    .param p1, "start"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 426
    .local v1, "v":Landroid/view/View;
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 427
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 429
    const-string v6, "alpha"

    new-array v7, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v7, v8

    if-eqz p1, :cond_0

    const v3, 0x3f333333    # 0.7f

    :goto_0
    aput v3, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v6, "scaleX"

    new-array v7, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    aput v3, v7, v8

    if-eqz p1, :cond_1

    move v3, v5

    :goto_1
    aput v3, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v3, "scaleY"

    new-array v6, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    if-eqz p1, :cond_2

    :goto_2
    aput v5, v6, v9

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 434
    .local v2, "z":F
    :goto_3
    const-string v3, "translationZ"

    new-array v4, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    aput v5, v4, v8

    aput v2, v4, v9

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    return-object v0

    .end local v2    # "z":F
    :cond_0
    move v3, v4

    .line 429
    goto :goto_0

    :cond_1
    move v3, v4

    .line 430
    goto :goto_1

    :cond_2
    move v5, v4

    .line 431
    goto :goto_2

    .line 433
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected animateGap(I)V
    .locals 17
    .param p1, "target"    # I

    .prologue
    .line 450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-ne v1, v13, :cond_1

    .line 450
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 456
    .local v10, "v":Landroid/view/View;
    move v3, v1

    .line 457
    .local v3, "newPos":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    add-int/lit8 v13, v13, 0x1

    if-lt v1, v13, :cond_6

    move/from16 v0, p1

    if-gt v1, v0, :cond_6

    .line 458
    add-int/lit8 v3, v3, -0x1

    .line 464
    :cond_2
    :goto_2
    move v8, v1

    .line 465
    .local v8, "oldPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 468
    :cond_3
    if-eq v8, v3, :cond_0

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getCoordinateFromIndex(I)Landroid/graphics/Point;

    move-result-object v9

    .line 473
    .local v9, "oldXY":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getCoordinateFromIndex(I)Landroid/graphics/Point;

    move-result-object v4

    .line 475
    .local v4, "newXY":Landroid/graphics/Point;
    const/4 v6, 0x0

    .line 476
    .local v6, "offsetOld":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    if-ge v8, v13, :cond_4

    .line 477
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v6, v13, 0x2

    .line 479
    :cond_4
    new-instance v7, Landroid/graphics/Point;

    iget v13, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v6

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct {v7, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 482
    .local v7, "oldOffset":Landroid/graphics/Point;
    const/4 v5, 0x0

    .line 483
    .local v5, "offsetNew":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v13, :cond_5

    const/4 v13, 0x2

    if-ge v3, v13, :cond_5

    .line 484
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v5, v13, 0x2

    .line 486
    :cond_5
    new-instance v2, Landroid/graphics/Point;

    iget v13, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v5

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct {v2, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 489
    .local v2, "newOffset":Landroid/graphics/Point;
    const-string v13, "translationX"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 490
    .local v11, "x":Landroid/animation/Animator;
    const-string v13, "translationY"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 491
    .local v12, "y":Landroid/animation/Animator;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->startAnimation(Ljava/util/List;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 459
    .end local v2    # "newOffset":Landroid/graphics/Point;
    .end local v4    # "newXY":Landroid/graphics/Point;
    .end local v5    # "offsetNew":I
    .end local v6    # "offsetOld":I
    .end local v7    # "oldOffset":Landroid/graphics/Point;
    .end local v8    # "oldPos":I
    .end local v9    # "oldXY":Landroid/graphics/Point;
    .end local v11    # "x":Landroid/animation/Animator;
    .end local v12    # "y":Landroid/animation/Animator;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    move/from16 v0, p1

    if-ge v0, v13, :cond_2

    move/from16 v0, p1

    if-lt v1, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-ge v1, v13, :cond_2

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 495
    .end local v3    # "newPos":I
    .end local v10    # "v":Landroid/view/View;
    :cond_7
    return-void
.end method

.method protected clampScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 562
    const/4 v2, 0x3

    .local v2, "stretch":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0xa

    .line 563
    .local v1, "overreach":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getMaxScroll()I

    move-result v0

    .line 564
    .local v0, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 566
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    neg-int v4, v1

    if-ge v3, v4, :cond_1

    .line 567
    neg-int v3, v1

    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 568
    iput v5, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int v4, v0, v1

    if-le v3, v4, :cond_2

    .line 570
    add-int v3, v0, v1

    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 571
    iput v5, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    goto :goto_0

    .line 572
    :cond_2
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    if-gez v3, :cond_4

    .line 573
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    neg-int v4, v2

    if-lt v3, v4, :cond_3

    .line 574
    iput v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 575
    :cond_3
    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    if-nez v3, :cond_0

    .line 576
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 578
    :cond_4
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    if-le v3, v0, :cond_0

    .line 579
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int v4, v0, v2

    if-gt v3, v4, :cond_5

    .line 580
    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0

    .line 581
    :cond_5
    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    if-nez v3, :cond_0

    .line 582
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    sub-int v4, v0, v4

    div-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 189
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 184
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 185
    iget p2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    goto :goto_0

    .line 186
    :cond_2
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-lt p2, v0, :cond_0

    .line 187
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected getColFromCoordinate(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "coordinate"    # I

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 225
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 227
    :cond_0
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLeftOffset:I

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getColOrRowFromCoordinate(I)I

    move-result v0

    return v0
.end method

.method protected getColOrRowFromCoordinate(I)I
    .locals 3
    .param p1, "coordinate"    # I

    .prologue
    .line 231
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    sub-int/2addr p1, v1

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lez p1, :cond_1

    .line 233
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    if-ge p1, v1, :cond_0

    .line 238
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 236
    .restart local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getCoordinateFromIndex(I)Landroid/graphics/Point;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x3

    .line 273
    rem-int/lit8 v0, p1, 0x3

    .line 274
    .local v0, "col":I
    div-int/lit8 v1, p1, 0x3

    .line 276
    .local v1, "row":I
    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v2, :cond_1

    .line 278
    if-nez v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 280
    const/4 v1, 0x1

    .line 283
    :cond_0
    if-lt p1, v3, :cond_1

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 288
    :cond_1
    if-ne v0, v3, :cond_2

    .line 289
    const/4 v0, 0x0

    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 293
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLeftOffset:I

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x1

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getIndexFromCoordinate(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 193
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getColOrRowFromCoordinate(I)I

    move-result v2

    .line 194
    .local v2, "row":I
    invoke-virtual {p0, v2, p1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getColFromCoordinate(II)I

    move-result v0

    .line 196
    .local v0, "col":I
    if-eq v0, v3, :cond_0

    if-ne v2, v3, :cond_2

    :cond_0
    move v1, v3

    .line 219
    :cond_1
    :goto_0
    return v1

    .line 199
    :cond_2
    const/4 v1, 0x0

    .line 201
    .local v1, "index":I
    mul-int/lit8 v4, v2, 0x3

    add-int v1, v4, v0

    .line 203
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v4, :cond_4

    .line 206
    if-nez v2, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v1, v3

    .line 207
    goto :goto_0

    .line 211
    :cond_3
    if-lez v2, :cond_4

    .line 212
    add-int/lit8 v1, v1, -0x1

    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    move v1, v3

    .line 217
    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 2

    .prologue
    .line 597
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    invoke-virtual {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v0

    return v0
.end method

.method protected getMaxScroll()I
    .locals 5

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    .line 589
    .local v0, "childCount":I
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v2, :cond_0

    .line 590
    add-int/lit8 v0, v0, 0x1

    .line 592
    :cond_0
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v1, v2, 0x3

    .line 593
    .local v1, "rowCount":I
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method protected getTargetFromCoordinate(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 243
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getColOrRowFromCoordinate(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, p1, v4

    invoke-virtual {p0, v4, p2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v0

    .line 249
    .local v0, "leftPos":I
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4, p2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v1

    .line 250
    .local v1, "rightPos":I
    if-ne v0, v3, :cond_2

    if-ne v1, v3, :cond_2

    move v2, v3

    .line 252
    goto :goto_0

    .line 254
    :cond_2
    if-ne v0, v1, :cond_3

    move v2, v3

    .line 256
    goto :goto_0

    .line 259
    :cond_3
    const/4 v2, -0x1

    .line 260
    .local v2, "target":I
    if-le v1, v3, :cond_5

    .line 261
    move v2, v1

    .line 265
    :cond_4
    :goto_1
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-ge v3, v2, :cond_0

    .line 266
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 262
    :cond_5
    if-le v0, v3, :cond_4

    .line 263
    add-int/lit8 v2, v0, 0x1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUpdateTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 319
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 135
    sub-int v2, p4, p2

    .line 136
    .local v2, "width":I
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    .line 138
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v2, v4

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLeftOffset:I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 141
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    if-eq v0, v4, :cond_1

    .line 142
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getCoordinateFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    .line 143
    .local v3, "xy":Landroid/graphics/Point;
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 145
    .local v1, "left":I
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 146
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    add-int/2addr v6, v1

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 140
    .end local v1    # "left":I
    .end local v3    # "xy":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getLastIndex()I

    move-result v0

    .line 327
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    invoke-interface {v3, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;->onStartDrag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    :cond_2
    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 336
    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->animateDragging(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->startAnimation(Ljava/util/List;)V

    move v1, v2

    .line 337
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 157
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .line 158
    .local v1, "availableWidth":I
    int-to-float v7, v1

    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0086

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    .line 162
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    .line 163
    .local v0, "N":I
    iget v7, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mChildSize:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 164
    .local v2, "childSpec":I
    const/4 v6, 0x0

    .line 166
    .local v6, "visibleChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 168
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 169
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 170
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 174
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 175
    add-int/lit8 v6, v6, 0x1

    .line 166
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 343
    .local v6, "action":I
    and-int/lit16 v0, v6, 0xff

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 416
    const/4 v0, 0x1

    .line 418
    :goto_1
    return v0

    .line 345
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    goto :goto_0

    .line 351
    :pswitch_1
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int v8, v0, v1

    .line 352
    .local v8, "delta":I
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 354
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;

    .line 355
    .local v10, "draggedView":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v13, v0

    .local v13, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v14, v0

    .line 357
    .local v14, "y":I
    invoke-virtual {v10}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->getTranslationX()F

    move-result v0

    int-to-float v1, v13

    add-float/2addr v0, v1

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->setTranslationX(F)V

    .line 358
    invoke-virtual {v10}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->getTranslationY()F

    move-result v0

    int-to-float v1, v14

    add-float/2addr v0, v1

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->setTranslationY(F)V

    .line 361
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    invoke-virtual {p0, v13, v14}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getIndexFromCoordinate(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;->isDeleteTarget(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    .line 364
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x10000

    :goto_3
    invoke-virtual {v10, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;->setColor(I)V

    .line 367
    invoke-virtual {p0, v13, v14}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getTargetFromCoordinate(II)I

    move-result v11

    .line 368
    .local v11, "target":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-eq v0, v11, :cond_0

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v11, v0, :cond_0

    .line 369
    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->animateGap(I)V

    .line 370
    iput v11, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 380
    .end local v10    # "draggedView":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;
    .end local v11    # "target":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_0
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastX:I

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastY:I

    .line 382
    int-to-float v0, v8

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastDelta:F

    goto/16 :goto_0

    .line 361
    .restart local v10    # "draggedView":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 364
    :cond_2
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDefaultColor:I

    goto :goto_3

    .line 373
    .end local v10    # "draggedView":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/ColoringCardView;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_3
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mScroll:I

    .line 374
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->clampScroll()V

    .line 375
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mEnabled:Z

    .line 378
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->onLayout(ZIIII)V

    goto :goto_4

    .line 385
    .end local v8    # "delta":I
    :pswitch_2
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 386
    iget v9, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 387
    .local v9, "dragged":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->animateDragging(Z)Ljava/util/List;

    move-result-object v7

    .line 389
    .local v7, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mDragged:I

    .line 391
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    if-nez v0, :cond_7

    .line 392
    invoke-virtual {p0, v9, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->reorderChildren(ILjava/util/List;)V

    .line 405
    :goto_5
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    invoke-interface {v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;->onEndDrag()V

    .line 408
    :cond_5
    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->startAnimation(Ljava/util/List;)V

    .line 409
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 411
    .end local v7    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v9    # "dragged":I
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mTouching:Z

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    goto/16 :goto_0

    .line 393
    .restart local v7    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .restart local v9    # "dragged":I
    :cond_7
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mIsDelete:Z

    if-eqz v0, :cond_8

    .line 394
    iput v9, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    .line 395
    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->removeViewAt(I)V

    .line 396
    invoke-virtual {p0, v9, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->reorderChildren(ILjava/util/List;)V

    goto :goto_5

    .line 398
    :cond_8
    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 399
    .local v12, "v":Landroid/view/View;
    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 418
    .end local v7    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v9    # "dragged":I
    .end local v12    # "v":Landroid/view/View;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 130
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method protected reorderChildren(ILjava/util/List;)V
    .locals 13
    .param p1, "dragged"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 504
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v6, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 507
    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 508
    .local v9, "v":Landroid/view/View;
    new-instance v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;-><init>(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$1;)V

    .line 509
    .local v8, "info":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    invoke-virtual {p0, v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    .line 510
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastX:F

    .line 511
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastY:F

    .line 512
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 513
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 514
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 517
    .end local v8    # "info":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->removeAllViews()V

    .line 518
    :cond_1
    :goto_1
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-eq p1, v0, :cond_4

    .line 519
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 521
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    goto :goto_1

    .line 523
    :cond_2
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-ge p1, v0, :cond_3

    .line 525
    add-int/lit8 v0, p1, 0x1

    invoke-static {v6, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 526
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 527
    :cond_3
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mLastTarget:I

    if-le p1, v0, :cond_1

    .line 529
    add-int/lit8 v0, p1, -0x1

    invoke-static {v6, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 530
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 533
    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 534
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mNewPositions:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;)V

    .line 533
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 537
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->onLayout(ZIIII)V

    .line 539
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 540
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;

    .line 541
    .restart local v8    # "info":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastX:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    const-string v2, "translationX"

    new-array v3, v12, [F

    iget v4, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastX:F

    iget-object v5, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v3, v11

    aput v10, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_6
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 546
    iget-object v0, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v12, [F

    iget v4, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->lastY:F

    iget-object v5, v8, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v3, v11

    aput v10, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 550
    .end local v8    # "info":Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$ChildReorderInfo;
    :cond_8
    return-void
.end method

.method protected setListeners()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mSecondaryOnClickListener:Landroid/view/View$OnClickListener;

    .line 113
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 606
    return-void
.end method

.method public setOnRearrangeListener(Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mOnRearrangeListener:Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView$OnRearrangeListener;

    .line 602
    return-void
.end method

.method public setUseLargeFirstRow(Z)V
    .locals 0
    .param p1, "largeFirstRow"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/qs/DraggableGridView;->mUseLargerFirstRow:Z

    .line 90
    return-void
.end method

.method protected startAnimation(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 444
    .local v0, "animation":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 445
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 446
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
