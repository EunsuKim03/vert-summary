; ModuleID = 'benchmark/cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = icmp ugt i64 %4, 2
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, i8* %9, i64 %7
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %6
  %16 = add i64 %4, -2
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  br label %23

20:                                               ; preds = %23
  %21 = srem i32 %29, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %69

23:                                               ; preds = %15, %23
  %24 = phi i64 [ 0, %15 ], [ %30, %23 ]
  %25 = phi i32 [ 0, %15 ], [ %29, %23 ]
  %26 = getelementptr inbounds i8, i8* %9, i64 %24
  %27 = load i8, i8* %26, align 1, !tbaa !13
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %25, %28
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %4
  br i1 %31, label %20, label %23, !llvm.loop !14

32:                                               ; preds = %20
  %33 = mul nuw nsw i32 %19, 10
  %34 = add nuw nsw i32 %33, %12
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br label %69

37:                                               ; preds = %1
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !12
  %40 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #8
  %41 = call i32* @__errno_location() #9
  %42 = load i32, i32* %41, align 4, !tbaa !17
  store i32 0, i32* %41, align 4, !tbaa !17
  %43 = call noundef i64 @strtol(i8* noundef %39, i8** noundef nonnull %2, i32 noundef 10)
  %44 = load i8*, i8** %2, align 8, !tbaa !19
  %45 = icmp eq i8* %44, %39
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  invoke void @_ZSt24__throw_invalid_argumentPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10
          to label %47 unwind label %48

47:                                               ; preds = %46
  unreachable

48:                                               ; preds = %60, %46
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = load i32, i32* %41, align 4, !tbaa !17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 %42, i32* %41, align 4, !tbaa !17
  br label %53

53:                                               ; preds = %52, %48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #8
  resume { i8*, i32 } %49

54:                                               ; preds = %37
  %55 = load i32, i32* %41, align 4, !tbaa !17
  %56 = icmp eq i32 %55, 34
  %57 = add i64 %43, -2147483648
  %58 = icmp ult i64 %57, -4294967296
  %59 = or i1 %58, %56
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  invoke void @_ZSt20__throw_out_of_rangePKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #10
          to label %61 unwind label %48

61:                                               ; preds = %60
  unreachable

62:                                               ; preds = %54
  %63 = icmp eq i32 %55, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  store i32 %42, i32* %41, align 4, !tbaa !17
  br label %65

65:                                               ; preds = %62, %64
  %66 = trunc i64 %43 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #8
  %67 = srem i32 %66, 12
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %6, %32, %20, %65
  %70 = phi i1 [ %68, %65 ], [ false, %6 ], [ false, %20 ], [ %36, %32 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = !{!8, !8, i64 0}
