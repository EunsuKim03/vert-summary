define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_7 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_7)
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_10 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_63.not.i = icmp eq i64 %n, 0
  br i1 %_63.not.i, label %bb2, label %iter.check

iter.check:                                       ; preds = %start
  %min.iters.check = icmp samesign ult i64 %n, 8
  br i1 %min.iters.check, label %bb3.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp samesign ult i64 %n, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %n, 9223372036854775776
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw i8, ptr %_10, i64 %index
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load = load <16 x i8>, ptr %2, align 1, !alias.scope !1031
  %wide.load10 = load <16 x i8>, ptr %3, align 1, !alias.scope !1031
  %4 = add <16 x i8> %wide.load, splat (i8 -65)
  %5 = add <16 x i8> %wide.load10, splat (i8 -65)
  %6 = icmp ult <16 x i8> %4, splat (i8 26)
  %7 = icmp ult <16 x i8> %5, splat (i8 26)
  %8 = select <16 x i1> %6, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %9 = select <16 x i1> %7, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %10 = or <16 x i8> %8, %wide.load
  %11 = or <16 x i8> %9, %wide.load10
  store <16 x i8> %10, ptr %2, align 1, !alias.scope !1031
  store <16 x i8> %11, ptr %3, align 1, !alias.scope !1031
  %index.next = add nuw i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !1034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n, %n.vec
  br i1 %cmp.n, label %iter.check19, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %n, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %bb3.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %n, 9223372036854775800
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ]
  %13 = getelementptr inbounds nuw i8, ptr %_10, i64 %index13
  %wide.load14 = load <8 x i8>, ptr %13, align 1, !alias.scope !1031
  %14 = add <8 x i8> %wide.load14, splat (i8 -65)
  %15 = icmp ult <8 x i8> %14, splat (i8 26)
  %16 = select <8 x i1> %15, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %17 = or <8 x i8> %16, %wide.load14
  store <8 x i8> %17, ptr %13, align 1, !alias.scope !1031
  %index.next15 = add nuw i64 %index13, 8
  %18 = icmp eq i64 %index.next15, %n.vec12
  br i1 %18, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1035

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %n, %n.vec12
  br i1 %cmp.n16, label %iter.check19, label %bb3.i.preheader

bb3.i.preheader:                                  ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %iter.check
  %i.sroa.0.04.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %bb3.i

bb3.i:                                            ; preds = %bb3.i.preheader, %bb3.i
  %i.sroa.0.04.i = phi i64 [ %21, %bb3.i ], [ %i.sroa.0.04.i.ph, %bb3.i.preheader ]
  %byte.i = getelementptr inbounds nuw i8, ptr %_10, i64 %i.sroa.0.04.i
  %_13.i = load i8, ptr %byte.i, align 1, !alias.scope !1031, !noundef !23
  %19 = add i8 %_13.i, -65
  %20 = icmp ult i8 %19, 26
  %_17.sroa.0.0.i = select i1 %20, i8 32, i8 0
  %_12.i = or i8 %_17.sroa.0.0.i, %_13.i
  store i8 %_12.i, ptr %byte.i, align 1, !alias.scope !1031
  %21 = add nuw nsw i64 %i.sroa.0.04.i, 1
  %exitcond.not.i = icmp eq i64 %21, %n
  br i1 %exitcond.not.i, label %iter.check19, label %bb3.i, !llvm.loop !1036

iter.check19:                                     ; preds = %bb3.i, %vec.epilog.middle.block, %middle.block
  %min.iters.check17 = icmp samesign ult i64 %n, 8
  br i1 %min.iters.check17, label %bb3.i2.preheader, label %vector.main.loop.iter.check21

vector.main.loop.iter.check21:                    ; preds = %iter.check19
  %min.iters.check20 = icmp samesign ult i64 %n, 32
  br i1 %min.iters.check20, label %vec.epilog.ph34, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check21
  %n.vec24 = and i64 %n, 9223372036854775776
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph22
  %index26 = phi i64 [ 0, %vector.ph22 ], [ %index.next29, %vector.body25 ]
  %22 = getelementptr inbounds nuw i8, ptr %_10, i64 %index26
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %wide.load27 = load <16 x i8>, ptr %22, align 1, !alias.scope !1037
  %wide.load28 = load <16 x i8>, ptr %23, align 1, !alias.scope !1037
  %24 = add <16 x i8> %wide.load27, splat (i8 -97)
  %25 = add <16 x i8> %wide.load28, splat (i8 -97)
  %26 = icmp ult <16 x i8> %24, splat (i8 26)
  %27 = icmp ult <16 x i8> %25, splat (i8 26)
  %28 = select <16 x i1> %26, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %29 = select <16 x i1> %27, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %30 = xor <16 x i8> %28, %wide.load27
  %31 = xor <16 x i8> %29, %wide.load28
  store <16 x i8> %30, ptr %22, align 1, !alias.scope !1037
  store <16 x i8> %31, ptr %23, align 1, !alias.scope !1037
  %index.next29 = add nuw i64 %index26, 32
  %32 = icmp eq i64 %index.next29, %n.vec24
  br i1 %32, label %middle.block30, label %vector.body25, !llvm.loop !1040

middle.block30:                                   ; preds = %vector.body25
  %cmp.n31 = icmp eq i64 %n, %n.vec24
  br i1 %cmp.n31, label %bb2, label %vec.epilog.iter.check35

vec.epilog.iter.check35:                          ; preds = %middle.block30
  %n.vec.remaining36 = and i64 %n, 24
  %min.epilog.iters.check37 = icmp eq i64 %n.vec.remaining36, 0
  br i1 %min.epilog.iters.check37, label %bb3.i2.preheader, label %vec.epilog.ph34

vec.epilog.ph34:                                  ; preds = %vec.epilog.iter.check35, %vector.main.loop.iter.check21
  %vec.epilog.resume.val32 = phi i64 [ %n.vec24, %vec.epilog.iter.check35 ], [ 0, %vector.main.loop.iter.check21 ]
  %n.vec39 = and i64 %n, 9223372036854775800
  br label %vec.epilog.vector.body40

vec.epilog.vector.body40:                         ; preds = %vec.epilog.vector.body40, %vec.epilog.ph34
  %index41 = phi i64 [ %vec.epilog.resume.val32, %vec.epilog.ph34 ], [ %index.next43, %vec.epilog.vector.body40 ]
  %33 = getelementptr inbounds nuw i8, ptr %_10, i64 %index41
  %wide.load42 = load <8 x i8>, ptr %33, align 1, !alias.scope !1037
  %34 = add <8 x i8> %wide.load42, splat (i8 -97)
  %35 = icmp ult <8 x i8> %34, splat (i8 26)
  %36 = select <8 x i1> %35, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %37 = xor <8 x i8> %36, %wide.load42
  store <8 x i8> %37, ptr %33, align 1, !alias.scope !1037
  %index.next43 = add nuw i64 %index41, 8
  %38 = icmp eq i64 %index.next43, %n.vec39
  br i1 %38, label %vec.epilog.middle.block44, label %vec.epilog.vector.body40, !llvm.loop !1041

vec.epilog.middle.block44:                        ; preds = %vec.epilog.vector.body40
  %cmp.n45 = icmp eq i64 %n, %n.vec39
  br i1 %cmp.n45, label %bb2, label %bb3.i2.preheader

bb3.i2.preheader:                                 ; preds = %vec.epilog.iter.check35, %vec.epilog.middle.block44, %iter.check19
  %i.sroa.0.04.i3.ph = phi i64 [ 0, %iter.check19 ], [ %n.vec24, %vec.epilog.iter.check35 ], [ %n.vec39, %vec.epilog.middle.block44 ]
  br label %bb3.i2

bb3.i2:                                           ; preds = %bb3.i2.preheader, %bb3.i2
  %i.sroa.0.04.i3 = phi i64 [ %41, %bb3.i2 ], [ %i.sroa.0.04.i3.ph, %bb3.i2.preheader ]
  %byte.i4 = getelementptr inbounds nuw i8, ptr %_10, i64 %i.sroa.0.04.i3
  %_13.i5 = load i8, ptr %byte.i4, align 1, !alias.scope !1037, !noundef !23
  %39 = add i8 %_13.i5, -97
  %40 = icmp ult i8 %39, 26
  %_17.sroa.0.0.i6 = select i1 %40, i8 32, i8 0
  %_12.i7 = xor i8 %_17.sroa.0.0.i6, %_13.i5
  store i8 %_12.i7, ptr %byte.i4, align 1, !alias.scope !1037
  %41 = add nuw nsw i64 %i.sroa.0.04.i3, 1
  %exitcond.not.i8 = icmp eq i64 %41, %n
  br i1 %exitcond.not.i8, label %bb2, label %bb3.i2, !llvm.loop !1042

bb2:                                              ; preds = %bb3.i2, %middle.block30, %vec.epilog.middle.block44, %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s, i64 24, i1 false)
  ret void
}
