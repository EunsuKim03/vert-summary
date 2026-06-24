; ModuleID = 'llvm/cpp_transcoder/CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES/CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES/CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = add i8 %2, -91
  %4 = icmp ult i8 %3, -26
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %7 = shl i64 %6, 32
  %8 = add i64 %7, -4294967296
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 46
  br i1 %12, label %13, label %57

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, i8* %0, i64 1
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %13, %51
  %18 = phi i64 [ %53, %51 ], [ 1, %13 ]
  %19 = phi i8 [ %55, %51 ], [ %15, %13 ]
  %20 = phi i32 [ %52, %51 ], [ 0, %13 ]
  %21 = add i8 %19, -65
  %22 = icmp ult i8 %21, 26
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = icmp eq i8 %19, 32
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  %26 = add i8 %19, -97
  %27 = icmp ult i8 %26, 26
  br i1 %27, label %51, label %28

28:                                               ; preds = %25
  %29 = icmp eq i8 %19, 46
  %30 = select i1 %29, i32 3, i32 %20
  br label %31

31:                                               ; preds = %28, %23, %17
  %32 = phi i32 [ 0, %17 ], [ 1, %23 ], [ %30, %28 ]
  %33 = icmp eq i32 %20, %32
  %34 = icmp ne i32 %32, 2
  %35 = and i1 %33, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %20, 2
  %38 = icmp eq i32 %32, 0
  %39 = and i1 %37, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %32, 3
  %42 = icmp ne i32 %20, 1
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = add i64 %18, 1
  %46 = and i64 %45, 4294967295
  %47 = getelementptr inbounds i8, i8* %0, i64 %46
  %48 = load i8, i8* %47, align 1, !tbaa !5
  %49 = icmp eq i8 %48, 0
  %50 = zext i1 %49 to i32
  br label %57

51:                                               ; preds = %25, %40
  %52 = phi i32 [ %32, %40 ], [ 2, %25 ]
  %53 = add nuw i64 %18, 1
  %54 = getelementptr inbounds i8, i8* %0, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %17, !llvm.loop !8

57:                                               ; preds = %51, %36, %31, %13, %44, %5, %1
  %58 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %50, %44 ], [ 0, %13 ], [ 0, %31 ], [ 0, %36 ], [ 0, %51 ]
  ret i32 %58
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_GIVEN_SENTENCE_GIVEN_SET_SIMPLE_GRAMMER_RULES_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
